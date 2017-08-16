import React from 'react';
import { Link } from 'react-router-dom';
import { values } from 'lodash';

class TopTracks extends React.Component {
  constructor(props) {
    super(props);
    this.state
  }

  componentDidMount() {
    this.props.displayTopTracks();
  }

  render() {
    console.log(this.props.tracks.length)
    if(Object.keys(this.props.tracks).length === 10) {
      const topTracks = values(this.props.tracks);
      const formattedTracks = topTracks.map((track, idx) => {
        debugger
        if(idx < 1) {
          debugger
          return(
            <h1>hello</h1>
          )
        }
      })
    } else {
      return(
        <h1>{this.props.tracks.length}</h1>
      )
    }
  }
}

export default TopTracks
