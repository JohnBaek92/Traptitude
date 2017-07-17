import { connect } from 'react-redux';
import Show from './track_show';
import { displayTrack } from '../../actions/track_actions';
import { displaySingleAlbum } from '../../actions/album_actions';
import { closeAnnotation, openAnnotation } from '../../actions/annotation_actions';
import { values } from 'lodash';

const mapStateToProps = ({tracks, albums, annotations, session}, ownProps) => {
  // let trackAnno = [];
  // values(annotations).forEach(anno => {
  //   debugger
  //   if(tracks.id === anno.track_id) {
  //     trackAnno.push(anno);
  //   }
  // });
  return({
    track: tracks,
    album: albums[ownProps.match.params.id],
    annotations: annotations,
    session
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
