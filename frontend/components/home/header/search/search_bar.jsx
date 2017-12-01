import React from 'react';
import { Link } from 'react-router-dom';
const debounce = require('lodash/debounce');

class SearchBar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
                    searchText: "",
                    hideSearchResults: true
                  };

    this.focus = this.focus.bind(this);
    this.handleClick = this.handleClick.bind(this);
    this.handleChange = this.handleChange.bind(this);
    this.debouncing = debounce(this.fetchResults, 300);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.searchText !== nextProps.searchText) {
      this.setState({searchText: nextProps.searchText}, this.fetchResults)
    }
  }

  fetchResults() {
    this.props.fetchAlbumResults(this.state.searchText);
  }

  handleSubmit(e) {
    e.preventDefault();
  }

  handleChange(e) {
    this.setState({searchText: e.currentTarget.value});
    if(e.currentTarget.value !== "") {
      this.debouncing();
    }
  }

  handleClick(e) {
    this.setState({searchText: ""});
    $(".search-bar-input").val("");
    this.props.clearAlbums();
  }

  focus(boolean) {
    return(() => {
      this.setState({hideSearchResults: boolean});
    });
  }

  searchAlbumResults() {
      const results = this.props.albumResults.map( (album, index) => {
        return(
          <Link to={'/albums/'+album.id} key={index} onMouseDown={this.handleSubmit}>
            <div className="album-results"  onClick={this.handleClick}>
              <img src={album.image_url} className="search-album-image" />
              <div className="album-results-title-musician">
                <div className="no-text-transform">{album.title}</div>
                <div className="no-text-transform">{album.musician}</div>
              </div>
            </div>
          </Link>
      )
    });

    if(!this.state.hideSearchResults) {
      if(this.state.searchText === "") {
        return;
      }
      return(
        <div>
          <h4 className="search-results-header">Search Results</h4>
          <hr className="horizontal-bar"/>
          <h5 className="album-results-header">Albums</h5>
          <ul>
            {results}
          </ul>
        </div>
      )
    } else {
      return;
    }
  }

  render() {
    return(
      <div className="search-bar">
        <div className="search-bar">
          <input onChange={this.handleChange} onBlur={this.focus(true)} onFocus={this.focus(false)} className='search-bar-input' placeholder="Search Albums"></input>
        </div>
        <div className="search-results">
          {this.searchAlbumResults()}
        </div>
      </div>
    )
  }
}

export default SearchBar
