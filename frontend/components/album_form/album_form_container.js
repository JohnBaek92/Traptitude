import { connect } from 'react-redux';
import AlbumForm from './album_form';
import { createAlbum } from "../../actions/album_actions";

const mapStateToProps = (state) => {
  return({}
  );
};

const mapDispatchToProps = (dispatch) => {
  return({
    createAlbum: (album) => dispatch(createAlbum(album))
  });
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(AlbumForm);
