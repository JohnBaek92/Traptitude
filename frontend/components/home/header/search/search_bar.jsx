import React from 'react';

class SearchBar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {searchText: ""};
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.searchText !== nextProps.searchText) {
      this.setState({searchText: nextProps.searchText}, this.fetchResults)
    }
  }

  fetchResults() {
    this.props.fetchAlbumResults(this.state.searchText);
  }

  searchAlbumResults() {
    const results = this.props.albumResults.map( (album, index) => {
      return(
        <div key={index}>
          <div><img src={album.image_url} className="search-album-image" /></div>
          {album.title}
        </div>
      )
    });

    return results;
  }

  render() {
    const searchDisplayBoolean = (this.props.albumResults.length > 0 && this.state.searchText);
    const searchDisplayClass = (searchDisplayBoolean ? "search-results" : "search-results hidden");

    return(
      <div className={searchDisplayClass}>
        <h4 className="search-results-header">Search Results</h4>
        <hr className="horizontal-bar"/>
        <ul>
          {this.searchAlbumResults()}
        </ul>
      </div>
    )
  }
}

export default SearchBar
