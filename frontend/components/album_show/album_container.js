import { connect } from 'react-redux';
import Show from './show';
import {displaySingleAlbum} from '../../actions/album_actions';

const mapStateToProps = ({albums}) => {
  return(
    {albums}
  );
};

const mapDispatchToProps = (dispatch) => {
  return ({
    displaySingleAlbum: (id) => dispatch(displaySingleAlbum(id))
  });
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Show);
