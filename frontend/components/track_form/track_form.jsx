import React from 'react';
import ReactQuill from 'react-quill';

class TrackForm extends React.Component {
  constructor(props) {
    super(props);
    if(props.track) {
      this.state = {
        title: props.track.title,
        lyrics: props.track.lyrics,
        features: props.track.features,
        producer: props.track.producer,
        album_id: props.track.album_id
      };
    } else {
      this.state = {
        title: "",
        lyrics: "",
        features: "",
        producer: "",
        album_id: Number(this.props.match.params.id)
      };
    }
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit() {
    let track = this.state;
    this.props.createTrack(track)
    .then((track) => {
      return(this.props.history.push(`/albums/${track.track.track.album_id}/${track.track.track.id}`))
    });
  }

  render() {
    const albumId = Number(this.props.match.params.id);
    if(this.props.album[albumId]){
      const album = this.props.album[albumId];
      return (
      <section className="track-form-page">
        <section className="album-background">
          <img className="album-background-photo" src={album.image_url}/>
          <div className="black-layer">
            <div className="album-total-info">
              <img className="album-profile-photo" src={album.image_url}/>
              <div className="album-info-minus-photo">
                <div className="album-word">album</div>
                <div className="album-title">{album.title}</div>
                <div className="album-musician">{album.musician}</div>
                <div className="album-release-date">Released {album.release_date}</div>
            </div>
          </div>
          </div>
        </section>
        <section className="add-track-section">
          <section className="track-form-header">
            <h2 className="add-track-words">Add Track</h2>
            <div className="primary-info-words">
              <div className="primary-info-words">Primary Info</div>
              <div className="required-word">* required</div>
            </div>
            <hr/>
          </section>
          <form className="track-form">
            <div className="track-form-title-input-container">
              <input type="text"
                value={this.state.title}
                placeholder="Track Title"
                onChange={this.update('title')}
                className="track-title-form-input" />
              </div>
              <div className="track-form-lyrics-input-container">
                <ReactQuill theme='bubble'
                  onChange={this.handleChange}
                  placeholder="Track Lyrics">
                  <div className="add-track-lyrics-area"></div>
                </ReactQuill>
              </div>
              <div className="additional-metadata">
                <div className="additional-metadata-header">Additional Metadata</div>
                <hr />
                <div className="track-form-features-input-container">
                  <input type="text"
                    value={this.state.features}
                    placeholder="Track Features"
                    onChange={this.update('features')}
                    className="track-form-features-input"/>
                </div>
                <div className="track-form-producer-input-container">
                  <input type="text"
                    value={this.state.producer}
                    placeholder="Track Producer"
                    onChange={this.update('producer')}
                    className="track-form-producer-input"/>
                  </div>
                </div>
                <button className="submit-button-for-track" onClick={this.handleSubmit}>Submit Track</button>
          </form>
        </section>
      </section>
    )
  } else {
      return(
        <h1>Loading...</h1>
      )
    };
  }
}

export default TrackForm;
