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
      annotations:[]
    };
    this.selectLyrics = this.selectLyrics.bind(this);
    this.sumFunctions = this.sumFunctions.bind(this);
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

    if(trimmedLyrics.length > 0 && this.props.tracks[trackId]) {
      let track = this.props.tracks[trackId];
      let start_idx = track.lyrics.indexOf(trimmedLyrics);
      let end_idx = trimmedLyrics.length + start_idx;
      this.setState(Object.assign(this.state,{start_idx: start_idx, end_idx: end_idx}));
    }
  }

  sumFunctions() {
    const trackId = Number(this.props.match.params.trackId);
    this.selectLyrics();
    this.props.openAnnotation(<AnnotationForm startIdx={this.state.start_idx}
      endIdx={this.state.end_idx} trackId={trackId}/>)
  }

  render() {
    const trackId = Number(this.props.match.params.trackId);
    const albumId = Number(this.props.match.params.id);
    if(this.props.tracks[trackId] && this.props.albums[albumId]) {
      const track = this.props.tracks[trackId];
      const album = this.props.albums[albumId];
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
                    <Link to={'/albums/'+albumId} className="track-show-album-title">{album.title}</Link></div>
                </div>
              </div>
            </div>
          </section>
          <section className="track-lyrics">
            <div id="lyrics-container">
              <p id="the-lyrics-are-here" onMouseUp={this.sumFunctions}>
                {track.lyrics}
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
