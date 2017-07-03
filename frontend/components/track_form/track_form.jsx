import React from 'react';

class TrackForm extends React.Component {
  constructor(props) {
    super(props);
    if(props.track) {
      this.state = {
        title: props.track.title,
        lyrics: props.track.lyrics,
        features: props.track.features,
        producer: props.track.producer
      };
    } else {
      this.state = {
        title: "",
        lyrics: "",
        features: "",
        producer: ""
      };
    }
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  render() {
    return(
      <section className="track-form-page">
        <section className="track-form-header">
          <h2 className="add-track-words">Add Track</h2>
          <div className="primary-info-words">
            <div>Primary Info</div>
            <div>*Required</div>
          </div>
          <hr/>
        </section>
        <section className="track-form">
          <div className="track-form-title-input-container">
            <input type="text"
              value={this.state.title}
              placeholder="Track Title"
              onChange={this.update('title')}
              className="track-title-form-input" />
          </div>
          <div className="track-form-lyrics-input-container">
            <input type="text"
              value={this.state.lyrics}
              placeholder="Track Lyrics"
              onChange={this.update('lyrics')}
              className="track-form-lyrics-input"/>
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
        </section>
      </section>
    );
  }
}

export default TrackForm;
