import React from 'react';
import { Link } from 'react-router-dom';

class SearchBar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
                    searchText: this.props.searchText,
                    resetState: false
                  };

    this.handleClick = this.handleClick.bind(this);
    this.clickOffResults = this.clickOffResults.bind(this);
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.searchText !== nextProps.searchText) {
      this.setState({searchText: nextProps.searchText}, this.fetchResults)
    }
  }

  fetchResults() {
    this.props.fetchAlbumResults(this.state.searchText);
  }

  clickOffResults() {
    let currentSearch = this.state.searchText
    $('*').click( function(e) {
      if(e.target.className !== 'search-results') {
        $(".search-bar-input").attr('value',"");
        $(".search-bar-input").val("");
        $('.search-results').addClass('hidden');
      }
      if (e.target.className === "search-bar-input" && currentSearch !== "" && e.currentTarget.value !== "") {
        $('.search-results').removeClass('hidden');
      }
    })
  }

  handleClick(e) {
    this.setState({searchText: ""});
    $(".search-bar-input").val("");
  }

  searchAlbumResults() {
    const results = this.props.albumResults.map( (album, index) => {
      return(
        <Link to={'/albums/'+album.id} key={index}>
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

    return results;
  }

  render() {
    this.clickOffResults();
    const searchDisplayBoolean = (this.props.albumResults.length > 0 && this.state.searchText);
    const searchDisplayClass = (searchDisplayBoolean ? "search-results" : "search-results hidden");
    return(
      <div className={searchDisplayClass}>
        <h4 className="search-results-header">Search Results</h4>
        <hr className="horizontal-bar"/>
        <h5 className="album-results-header">Albums</h5>
        <ul>
          {this.searchAlbumResults()}
        </ul>
      </div>
    )
  }
}

export default SearchBar
