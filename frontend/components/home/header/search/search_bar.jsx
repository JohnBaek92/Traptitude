import React from 'react';

class SearchBar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {searchText: ""};
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.searchText !== nextProps.searchText) {
      this.setState({serchText: nextProps.searchText}, this.fetchResults)
    }
  }

  fetchResults() {
    this.props.fetchAlbumResults(this.state.searchText);
  }

  searchResults() {
    const results = this.props.albumResults.map( (album, index) => {
      return(
        <div key={index}>{album.title}</div>
      )
    });

    return results;
  }

  render() {
    const searchDisplayBoolean = (this.props.albumResults.length > 0 && this.state.searchText);
    const searchDisplayClass = (searchDisplayBoolean ? "search-index" : "search-index hidden");

    return(
      <div className={searchDisplayClass}>
        <ul>
          {this.searchResults()}
        </ul>
      </div>
    )
  }
}

export default SearchBar