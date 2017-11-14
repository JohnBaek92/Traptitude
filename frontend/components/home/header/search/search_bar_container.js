import { connect } from 'react-redux';
import SearchBar from './search_bar';
import { fetchAlbumResults } from '../../../../actions/search_actions';

const mapStateToProps = (state) => {
  return({
    albumResults: state.search.albums
  });
}

const mapDispatchToProps = (dispatch) => {
  return({
    fetchAlbumResults: (albums) => {
      dispatch(fetchAlbumResults(albums));
    }
  });
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SearchBar)
