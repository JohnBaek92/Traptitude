import React from 'react';
import { values } from 'lodash';
import Eye from 'react-icons/lib/ti/eye';
import { Link } from 'react-router-dom';

class AlbumIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  componentWillMount() {
    this.props.displayTopTen();
  }

  render() {
      if(this.props.albums) {
        const albums = values(this.props.albums);
        const formattedAlbums = albums.map((album, idx) => {
          if (idx < 1) {
            return(
              <Link to={'/albums/'+album.id} key={idx}>
              <div className="top-one-content">
                  <div className="top-three-count">{idx+1}</div>
                  <img className="top-three-photo" src={album.image_url}/>
                  <div className="top-three-info">
                    <div className="top-three-title">{album.title}</div>
                    <div className="top-three-musician">{album.musician}</div>
                  </div>
              </div>
              </Link>
            );
          } else if (idx < 3) {
            return(
              <Link to={'/albums/'+album.id} key={idx}>
              <div className="top-three-content">
                  <div className="top-three-count">{idx+1}</div>
                  <img className="top-three-photo" src={album.image_url}/>
                    <div className="top-three-info">
                      <div className="top-three-title">{album.title}</div>
                      <div className="top-three-musician">{album.musician}</div>
                    </div>
              </div>
              </Link>
            );
          }  else {
            return(
              <Link to={'/albums/'+album.id} key={idx}>
              <div className="top-ten-content">
                  <div className="top-ten-count">{idx+1}</div>
                  <img className="top-ten-photo" src={album.image_url} />
                  <div className="top-ten-info">
                    <div className="top-ten-track-info">{album.title} by {album.musician}</div>
                  </div>
              </div>
              </Link>
            );
          }
        })
        return(
          <section>
            <div className="featured-stories-container-background">
              <div className="featured-stories-container">
                <h2 id="featured-info">Featured Info</h2>
                <div className="gifs-are-here">
                  <img className="anno-demo-gif" src={window.images.anno_demo_gif} />
                </div>
              </div>
            </div>
              <div className="top-ten-container">
                <h2 id="top-albums">Top Albums</h2>
                {formattedAlbums}
            </div>
        </section>
        );
      } else {
        return (<div></div>)
      };
  }
}

export default AlbumIndex;
