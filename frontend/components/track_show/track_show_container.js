import { connect } from 'react-redux';
import Show from './track_show';
import { displayTrack } from '../../actions/track_actions';
import { displaySingleAlbum } from '../../actions/album_actions';
import { closeAnnotation, openAnnotation } from '../../actions/annotation_actions';

const mapStateToProps = ({tracks, albums}) => {
  return({
    tracks,
    albums
  });
};

const mapDispatchToProps = (dispatch) => {
  return ({
    displayTrack: (trackId) => dispatch(displayTrack(trackId)),
    displaySingleAlbum: (id) =>dispatch(displaySingleAlbum(id)),
    closeAnnotation: () => dispatch(closeAnnotation()),
    openAnnotation: (annoForm) => dispatch(openAnnotation(annoForm))
  });
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Show);
