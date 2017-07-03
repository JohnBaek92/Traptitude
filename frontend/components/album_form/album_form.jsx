import React from 'react';

class AlbumForm extends React.Component {
  constructor(props) {
    super(props);
    if(props.album) {
      this.state = {
        title: props.album.title,
        release_date: props.album.release_date,
        musician: props.track.musician,
        image_url: props.track.image_url
      };
    } else {
      this.state = {
        title: "",
        release_date: "",
        musician: "",
        image_url: ""
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
      <section className="album-form-page">
        <section className="album-form-header">
          <h2 className="add-album-words">Add Album</h2>
          <div className="primary-info-words">
            <div>Primary Info</div>
            <div>*Required</div>
          </div>
          <hr/>
        </section>
        <section className="album-form">
          <div className="album-form-title-input-container">
            <input type="text"
              value={this.state.title}
              placeholder="Album Title"
              onChange={this.update('title')}
              className="album-title-form-input" />
          </div>
          <div className="album-musician-input-container">
            <input type="text"
              value={this.state.musician}
              onChange={this.update('musician')}
              className="album-musician-input-container"
              placeholder="Musician" />
          </div>
          <div className="album-form-release-date-input-container">
            //PUT IN SELECTORS FOR DATE INPUT
          </div>
          <div className="album-image-url-input-container">
            <input type="text"
              value={this.state.image_url}
              onChange={this.update('image_url')}
              className="album-image-input-container"
              placeholder="Image Url"
              />

          </div>
        </section>
      </section>
    );
  }
}

export default AlbumForm;
