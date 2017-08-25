import React from 'react';
import { Link } from 'react-router-dom';
import { values } from 'lodash';

class TopTracks extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.displayTopTracks();
  }

  render() {
    if(Object.keys(this.props.tracks).length === 10) {
      const topTracks = values(this.props.tracks);
      const formattedTracks = topTracks.map((track, idx) => {
        const renderFeatures = () => {
          if(track.features){
            return(
              <div className="features">{track.title} by {track.musician} (Ft. {track.features})</div>
            )
          } else {
            return(
              <div className="features">{track.title} by {track.musician}</div>
            )
          }
        }
        if(idx < 1) {
          return(
            <Link to={'/albums/'+track.album_id+"/"+track.id} key={idx}>
              <div className="top-one-content">
                <div className="top-three-count">{idx+1}</div>
                <img className="top-three-photo" src={track.image_url}/>
                <div className="top-three-info">
                  <div className="top-three-title">{track.title}</div>
                  <div className="top-three-musician">{track.musician}</div>
                </div>
              </div>
            </Link>
          );
        } else if (idx < 3) {
          return(
            <Link to={'/albums/'+track.album_id+"/"+track.id} key={idx}>
              <div className="top-three-content">
                <div className="top-three-count">{idx+1}</div>
                <img className="top-three-photo" src={track.image_url}/>
                <div className="top-three-info">
                  <div className="top-three-title">{track.title}</div>
                  <div className="top-three-musician">{track.musician}</div>
                </div>
              </div>
            </Link>
          );
        } else {
          return(
            <Link to={'/albums/'+track.album_id+"/"+track.id} key={idx}>
              <div className="top-ten-content">
                <div className="top-ten-count">{idx+1}</div>
                <img className="top-ten-photo" src={track.image_url}/>
                <div className="top-ten-info">
                  {renderFeatures()}
                </div>
              </div>
            </Link>
          );
        }
      })
      return(
        <div className="top-ten-container">
          <div className="top-tracks-header">Top Tracks</div>
          {formattedTracks}
        </div>
      );
    } else {
      return(
        <div></div>
      )
    }
  }
}

export default TopTracks
