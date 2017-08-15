import React from 'react';
import { Link } from 'react-router-dom';

class TopTracks extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.displayTopTracks();
  }

  render() {
    return(
      <h1>hello!</h1>
    )
  }
}

export default TopTracks
