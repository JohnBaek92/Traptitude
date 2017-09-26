import React from 'react';
import { values } from 'lodash';
import { Link } from 'react-router-dom';
import AnnotationForm from './annotation/annotation_form_container';
import AnnotationShow from './annotation/annotation_show_container';
import SignInContainer from '../home/header/user_form/signin_form_container';
import NotFavorited from 'react-icons/lib/fa/heart-o';
import Favorited from 'react-icons/lib/fa/heart';

class TrackShow extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      user_id: this.props.session.currentUser ? this.props.session.currentUser.id : null,
      startLocation: "",
      endLocation: "",
      currentAnnotation: null,
      annotating: false,
      annotations: props.annotations
    };
    this.selectLyrics = this.selectLyrics.bind(this);
    this.displayAnnotationsAndLyrics = this.displayAnnotationsAndLyrics.bind(this);
    this.getStartLocation = this.getStartLocation.bind(this);
    this.selectLyric = this.selectLyric.bind(this);
    this.favoritesToggle = this.favoritesToggle.bind(this);
    this.createFavorite = this.createFavorite.bind(this);
    this.removeFavorite = this.removeFavorite.bind(this);
  }

  componentDidMount() {
    const trackId = Number(this.props.match.params.trackId);
    const albumId = Number(this.props.match.params.id);
    this.props.displayTrack(trackId);
    this.props.displaySingleAlbum(albumId);
  }

  componentWillReceiveProps(nextProps){
    if(nextProps.session.currentUser !== null) {
      this.setState(Object.assign({}, this.state, {user_id: nextProps.session.currentUser.id}));
    } else {
      this.setState(Object.assign({}, this.state, {user_id: null}));
    }
  }

  annotatingLyrics(){
    if(this.state.startLocation){
      this.setState(Object.assign({}, this.state, {annotating: true}));
    }
  }

  selectLyrics(e) {
    if(this.state.user_id !== null) {
      this.props.closeAnnotation();
      let selectedLyrics = document.getSelection().toString();
      let lyrics = document.getSelection();
      let endLocation = e.pageY;
      if(selectedLyrics.length > 0 && this.props.session.currentUser) {
        if(lyrics.anchorNode !== lyrics.focusNode ||
          (lyrics.anchorNode.parentElement.className === 'anno-lyrics')
        ) {return;}
        else {
          let start_idx = lyrics.anchorOffset;
          let end_idx = lyrics.focusOffset;
          if(start_idx > end_idx) {
            const temp = start_idx;
            start_idx = end_idx;
            end_idx = temp;
          }
          let offset = lyrics.anchorNode.parentElement;
          while (offset.previousSibling) {
            start_idx += offset.previousSibling.innerText.length;
            end_idx += offset.previousSibling.innerText.length;
            offset = offset.previousSibling;
          }
          const trackId = Number(this.props.match.params.trackId);
          this.props.openAnnotation(<AnnotationForm startIdx={start_idx}
            endIdx={end_idx} trackId={trackId} location={((this.state.startLocation+endLocation)/2)-99}/>);
          }
        } else {
          this.setState({start_idx: null, end_idx: null, location: null,
            currentAnnotation: null, annotating: null})
          }
    } else {
      this.props.openModal(<SignInContainer />)
      window.getSelection().removeAllRanges();
    }
  }

  getStartLocation(e) {
    let startLocation = e.pageY
    this.setState({startLocation: startLocation})
  }

  sortAnno(a, b) {
    if(a.start_idx < b.start_idx) {
      return -1;
    } else {
      return 1;
    }
  }

  selectLyric(e, anno){
    e.preventDefault();
    e.stopPropagation();
    let location = e.pageY - 100;
    this.props.openAnnotation(<AnnotationShow anno={anno} location={location}/>)
  }

  favoritesToggle(){
    if(this.props.session.currentUser) {
      let trackId = this.props.track.id
      let renderFavorite = false;
      // this.props.session.currentUser.favorites.forEach((favorite) => {
      //   if(favorite.id === trackId) {
      //     renderFavorite = true;
      //   } else {
      //     renderFavorite = false;
      //   }
      // })
      let favorites = this.props.session.currentUser.favorites
      for(let i = 0; i < favorites.length;i++) {
        if(favorites[i].id === trackId) {
          renderFavorite = true;
          break;
        } else {
          renderFavorite = false;
        }
      }

      if(renderFavorite === true) {
        debugger
        return(
          <Favorited size={35} onClick={this.removeFavorite} />
        )
      } else {
        return (
          <NotFavorited size={35} onClick={this.createFavorite} />
        )
      }
    }
  }

  removeFavorite(){
    this.props.removeFavorite({user_id: this.state.user_id,
      track_id: this.props.track.id, title: this.props.track.title, features: this.props.track.features, producer: this.props.track.producer, lyrics: this.props.track.lyrics});
  }

  createFavorite(){
    this.props.createFavorite({user_id: this.state.user_id,
      track_id: this.props.track.id, title: this.props.track.title, features: this.props.track.features, producer: this.props.track.producer, lyrics: this.props.track.lyrics});
  }

  displayAnnotationsAndLyrics () {
    let lyrics = [];
    let startIdx = 0;
    if(Object.keys(this.props.annotations).length !== 0) {
      let annoArray = values(this.props.annotations)
      annoArray.sort(this.sortAnno).map((anno, idx) => {
        lyrics.push(
          <span key={idx} className="regular-lyrics">
            { this.props.track.lyrics.slice(startIdx, anno.start_idx) }
          </span>
        );
        lyrics.push(
          <span key={idx + 9000} className={"anno-lyrics"} onClick={(e) => this.selectLyric(e, anno)}>
            {this.props.track.lyrics.slice(anno.start_idx, anno.end_idx) }
          </span>
        );
          startIdx = anno.end_idx;
        });
        lyrics.push(
          <span key={Math.random() + 4321} className="regular-lyrics">
            { this.props.track.lyrics.slice(startIdx, this.props.track.lyrics.length) }
          </span>
        );
      } else {
      lyrics = this.props.track.lyrics;
    }
    return lyrics;
  }

  render() {
    if(this.props.track && this.props.album) {
      const track = this.props.track;
      const album = this.props.album;
      const photo_shown = track.image_url || album.image_url;
      return(
        <section className="track-show-page">
          <section className="track-background">
            <img className="album-background-photo" src={album.image_url} />
            <div className="black-layer">
              <div className="track-total-info">
                <img className="track-profile-photo" src={photo_shown} />
                <div className="track-info-minus-photo">
                  <div className="track-show-title">{track.title} {this.favoritesToggle() }</div>
                  <div className="track-show-artist">{album.musician}</div>
                  <div className="words-produced-by">Produced by
                    <span className="producer">{track.producer}</span></div>
                  <div className="the-word-album">Album
                    <Link to={'/albums/'+album.id} className="track-show-album-title">{album.title}</Link></div>
                </div>
              </div>
            </div>
          </section>
          <section className="track-lyrics">
            <div id="lyrics-container">
              <div id="the-lyrics-are-here">
                <p id="the-lyrics-are-here" onMouseDown={this.getStartLocation} onMouseUp={this.selectLyrics}>
                  { this.displayAnnotationsAndLyrics() }
                </p>
              </div>
            </div>
          </section>
        </section>
      )
    } else {
      return(
        <h1>Loading</h1>
      )
    }
  }
}

export default TrackShow;
