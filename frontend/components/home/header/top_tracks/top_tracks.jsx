import React from 'react';
import { Link } from 'react-router-dom';

class TopTracks extends React.Component {
  constructor(props) {
    super(props);
  }

  componentWillMount() {
    this.props.displayTopTracks();
  }

  render() {
    if(this.props.tracks.length === 10) {
      return(
        <h1>hello??</h1>
      )
    } else {
      return(
        <h1>hello!</h1>
      )
    }
  }
}

export default TopTracks
