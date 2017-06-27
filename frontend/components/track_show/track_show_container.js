import { connect } from 'react-redux';
import Show from './track_show';
import { displayTrack } from '../../actions/track_actions';
import { displaySingleAlbum } from '../../actions/album_actions';

const mapStateToProps = ({tracks, albums}) => {
  return({
    tracks,
    albums
  });
};

const mapDispatchToProps = (dispatch) => {
  return ({
    displayTrack: (trackId) => dispatch(displayTrack(trackId)),
    displaySingleAlbum: (id) =>dispatch(displaySingleAlbum(id))
  });
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Show);
