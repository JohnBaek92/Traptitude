import { connect } from 'react-redux';
import Show from './track_show';
import { displayTrack } from '../../actions/track_actions';

const mapStateToProps = ({tracks}) => {
  return(
    {tracks}
  );
};

const mapDispatchToProps = (dispatch) => {
  return ({
    displayTrack: (id) => dispatch(displayTrack(id))
  });
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Show);
