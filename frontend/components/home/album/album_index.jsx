import React from 'react';
import { values } from 'lodash';
import Eye from 'react-icons/lib/ti/eye';
import {Link} from 'react-router-dom';

class AlbumIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.displayTopTen();
  }

  render() {
      if(this.props.albums) {
        const albums = values(this.props.albums);
        const formattedAlbums = albums.map((album, idx) => {
          if (idx < 1) {
            return(
              <Link to={'/albums/'+album.id}>
              <div className="top-one-content" key={idx}>
                  <div className="top-three-count">{idx+1}</div>
                  <div className="top-three-title">{album.title}</div>
                  <div className="top-three-musician">{album.musician}</div>
              </div>
              </Link>
            );
          } else if (idx < 3) {
            return(
              <Link to={'/albums/'+album.id}>
              <div className="top-three-content" key={idx}>
                  <div className="top-three-count">{idx+1}</div>
                  <div className="top-three-title">{album.title}</div>
                  <div className="top-three-musician">{album.musician}</div>
              </div>
              </Link>
            );
          }  else {
            return(
              <Link to={'/albums/'+album.id}>
              <div className="top-ten-content" key={idx}>
                  <div className="top-ten-count">{idx+1}</div>
                  <div className="top-ten-track-info">{album.title} by {album.musician}</div>
                  <div className="eye-top-ten"><Eye /></div>
              </div>
              </Link>
            );
          }
        })

        return(
          <div className="top-ten-container">
            <div className="top-tracks-header">Top Albums</div>
            {formattedAlbums}
          </div>
        )
      } else {
        return (<h1>Loading</h1>)
      };
  }
}

export default AlbumIndex;
