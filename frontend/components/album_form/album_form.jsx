import React from 'react';
import Dropzone from 'react-dropzone';

class AlbumForm extends React.Component {
  constructor(props) {
    super(props);
    if(props.album) {
      this.state = {
          title: props.album.title,
          release_date: props.album.release_date,
          musician: props.track.musician,
          image: props.track.image
      };
    } else {
      this.state = {
          title: "",
          release_date: "",
          musician: "",
          image: "",
          image_url: "",
      };
    }
    this.handleSubmit = this.handleSubmit.bind(this);
    this.updateDraggedFile = this.updateDraggedFile.bind(this);
  }

  update(field) {
    return e => this.setState({
        [field]: e.currentTarget.value
    });
  }

  updateFile (e) {
    let file = e.currentTarget.files[0];
    let fileReader = new FileReader();
    fileReader.onload = function() {
      this.setState({image: file, image_url: fileReader.result });
    }.bind(this);

    if (file) {
      fileReader.readAsDataURL(file);
    }
  }

  updateDraggedFile (e) {
    let file = e[0];
    let fileReader = new FileReader();
    fileReader.onload = function() {
      this.setState(Object.assign({}, this.state, {image: file, image_url: fileReader.result }));
    }.bind(this);

    if (file) {
      fileReader.readAsDataURL(file);
    }
  }

  handleSubmit(e) {
    let formData = new FormData();
    formData.append("album[title]", this.state.title);
    formData.append("album[release_date]", this.state.release_date);
    formData.append("album[musician]", this.state.musician);
    formData.append("album[image]", this.state.image);
    this.props.createAlbum(formData)
    .then((album) => {
      return(this.props.history.push(`/albums/${album.album.id}`));
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
        <form className="album-form">
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
            <input type="date" name="release_date" onChange={this.update('release_date')}/>
          </div>
          <div className="album-image-url-input-container">
            <Dropzone className="drag-and-drop" onDrop={this.updateDraggedFile}>Drag And Drop Album Image Here</Dropzone>
            <img src={this.state.image_url}/>
          </div>
          <button onClick={this.handleSubmit}>Submit</button>
        </form>
      </section>
    );
  }
}

export default AlbumForm;
