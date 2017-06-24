import { connect } from 'react-redux';
import { displayTopTen } from '../../../actions/album_actions';
import { allAlbums } from '../../../reducers/selectors';
import AlbumIndex from './album_index';

const mapStateToProps = (state) => {
  return(
    {albums: state.albums}
  );
};

const mapDispatchToProps = (dispatch) => {
  return ({
    displayTopTen: () => dispatch(displayTopTen())
  });
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(AlbumIndex);
