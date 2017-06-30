import React from 'react';
import { values } from 'lodash';
import { Link } from 'react-router-dom';
import AnnotationForm from './annotation/annotation_form_container';

class TrackShow extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      start_idx: null,
      end_idx: null,
      location: null,
      currentAnnotation: null,
      annotating: false,
      annoLocation: null
    };
    // this.selectLyrics = this.selectLyrics.bind(this);
    // this.sumFunctions = this.sumFunctions.bind(this);
    // this.displayAnnotationsAndLyrics = this.displayAnnotationsAndLyrics.bind(this);
    // this.handleAnnoClick = this.handleAnnoClick.bind(this);
  }

  componentDidMount() {
    const trackId = Number(this.props.match.params.trackId);
    const albumId = Number(this.props.match.params.id);
    this.props.displayTrack(trackId);
    this.props.displaySingleAlbum(albumId);
  }

 //  selectLyrics(e) {
 //    let selectedLyrics = document.getSelection().toString();
 //    let lyrics = document.getSelection()
 //    if(selectedLyrics.length > 0 && this.props.session.currentUser) {
 //      if(lyrics.anchorNode !== lyrics.focusNode ||
 //        (lyrics.anchorNode.parentElement.className === 'anno-lyrics')
 //      ) {return;}
 //      if(this.state.annotating === true) {
 //        this.setState({start_idx: null, end_idx: null,
 //          location: null, currentAnnotation: null, annotating: null});
 //      } else {
 //        let start_idx = lyrics.anchorOffset;
 //        let end_idx = lyrics.focusOffset;
 //        let annotatedCheck = lyrics.anchorNode.parentElement;
 //        if(start_idx > end_idx) {
 //          const temp = start_idx;
 //          start_idx = end_idx;
 //          end_idx = temp;
 //          this.setState({start_idx: start_idx, end_idx: end_idx})
 //        }
 //      }
 //    } else {
 //      this.setState({start_idx: null, end_idx: null, location: null,
 //        currentAnnotation: null, annotating: null})
 //    }
 //  }
 //
 //  handleAnnoClick(anno, e){
 //   this.setState({currentAnnotation:anno, location: e.pageY});
 // }

  // displayAnnotationsAndLyrics () {
  //   let lyrics = [];
  //   let startIdx = 0;
  //   if(Object.keys(this.props.annotations).length !== 0) {
  //     values(this.props.annotations).map((anno, idx) => {
  //       lyrics.push(<span key={idx} className="regular-lyrics">
  //       { this.props.track.lyrics.slice(startIdx, anno.start_idx) }
  //     </span>);
  //     lyrics.push(
  //       <span key={idx + 9000} className="anno-lyrics">
  //         {this.props.track.lyrics.slice(anno.start_idx, anno.end_idx+1) }
  //       </span>);
  //       startIdx = anno.end_idx+1;
  //     });
  //     lyrics.push(<span key={Math.random() + 4321} className="regular-lyrics">
  //     { this.props.track.lyrics.slice(startIdx, this.props.track.lyrics.length) }
  //   </span>);
  //   } else {
  //     lyrics = this.props.track.lyrics;
  //   }
  //   return lyrics;
  // }

  //
  // sumFunctions() {
  //   const trackId = Number(this.props.match.params.trackId);
  //   this.selectLyrics();
  //   this.props.openAnnotation(<AnnotationForm startIdx={this.state.start_idx}
  //     endIdx={this.state.end_idx} trackId={trackId}/>)
  // }

  render() {
    if(this.props.track && this.props.album) {
      const track = this.props.track;
      const album = this.props.album;
      const photo_shown = track.image_url || album.image_url;
      debugger
      return(
        <section className="track-show-page">
          <section className="track-background">
            <img className="album-background-photo" src={album.image_url} />
            <div className="black-layer">
              <div className="track-total-info">
                <img className="track-profile-photo" src={photo_shown} />
                <div className="track-info-minus-photo">
                  <div className="track-show-title">{track.title}</div>
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
                { track.lyrics }
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

// <p id="the-lyrics-are-here" onMouseUp={this.sumFunctions}>
