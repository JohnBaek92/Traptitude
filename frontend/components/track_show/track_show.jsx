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
      annotations: ""
    };
    this.selectLyrics = this.selectLyrics.bind(this);
    this.sumFunctions = this.sumFunctions.bind(this);
    this.highlightAnnotations = this.highlightAnnotations.bind(this);
    this.lyricsAreHere = this.theLyricsAreHere.bind(this);
  }

  theLyricsAreHere(e) {
    this.theLyricsAreHere = e;
  }

  componentDidMount() {
    const trackId = Number(this.props.match.params.trackId);
    const albumId = Number(this.props.match.params.id);
    this.props.displayTrack(trackId);
    this.props.displaySingleAlbum(albumId);
  }

  selectLyrics() {
    const trackId = Number(this.props.match.params.trackId);

    let selection = window.getSelection();
    let trimmedLyrics = selection.toString().trim();

    if(trimmedLyrics.length > 0 && this.props.track) {
      let track = this.props.track;
      let start_idx = track.lyrics.indexOf(trimmedLyrics);
      let end_idx = trimmedLyrics.length + start_idx;
      this.setState(Object.assign(this.state,{start_idx: start_idx, end_idx: end_idx}));
    }
  }

  highlightAnnotations() {
    let lyrics = document.getElementById("theLyricsAreHere");
    values(this.props.annotations).map(anno => {
      let start_idx = anno.start_idx;
      let end_idx = anno.end_idx;
      lyrics.innerHTML = lyrics.innerHTML.slice(0, start_idx) +
      "<span className='highlighted'>" + lyrics.innerHTML.slice(start_idx, end_idx + 1) +
      "</span>" + lyrics.innerHTML.slice(end_idx + 1);
    });
  }

  sumFunctions() {
    const trackId = Number(this.props.match.params.trackId);
    this.selectLyrics();
    this.props.openAnnotation(<AnnotationForm startIdx={this.state.start_idx}
      endIdx={this.state.end_idx} trackId={trackId}/>)
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
                  <div className="track-show-title">{track.title}</div>
                  <div className="track-show-artist">{album.musician}</div>
                  <div className="words-produced-by">Produced by
                    <span className="producer">{track.producer}</span></div>
                  <div className="the-word-album">Album
                    <Link to={'/albums/'+album.Id} className="track-show-album-title">{album.title}</Link></div>
                </div>
              </div>
            </div>
          </section>
          <section className="track-lyrics">
            <div id="lyrics-container">
              <p ref="theLyricsAreHere" onMouseUp={this.sumFunctions}>
                {track.lyrics}
                {this.highlightAnnotations()}
              </p>
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
