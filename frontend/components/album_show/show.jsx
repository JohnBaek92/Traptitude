import React from 'react';

class AlbumShow extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    let albumId = Number(this.props.match.params.id);
    debugger
    this.props.displaySingleAlbum(albumId);
  }

  render() {
    if(this.props.album){
      return(
        <h1>hi</h1>
      )
    } else {
      return(
        <h1>Loading</h1>
      )
    }
  }
  // render() {
  //   const album = this.props.album;
  //   if(album.id === this.props.id) {
  //     return(
  //       <div className="album-show-container">
  //         <h1>It is Working</h1>
  //       </div>
  //     );
  //   } else {
  //     return(
  //       <h1>Loading Up</h1>
  //     )
  //   }
  // }
}

export default AlbumShow;
