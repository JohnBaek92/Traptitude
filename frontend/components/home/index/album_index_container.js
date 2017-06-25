import { connect } from 'react-redux';
import { displayTopTen } from '../../../actions/album_actions';
import Index from './index';

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
)(Index);
