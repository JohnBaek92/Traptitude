import { connect } from 'react-redux';
import SearchBar from './search_bar';
import { fetchAlbumResults, clearAlbums } from '../../../../actions/search_actions';

const mapStateToProps = (state) => {
  return({
    albumResults: state.search.albums
  });
}

const mapDispatchToProps = (dispatch) => {
  return({
    fetchAlbumResults: (albums) => {
      dispatch(fetchAlbumResults(albums));
    },
    clearAlbums: () => dispatch(clearAlbums())
  });
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SearchBar)
