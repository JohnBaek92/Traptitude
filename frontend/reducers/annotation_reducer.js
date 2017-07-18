import merge from 'lodash/merge';
import { RECEIVE_ANNOTATION } from '../actions/annotation_actions';
import { RECEIVE_TRACK } from '../actions/track_actions';

const _nullAnnotation = {};

const AnnotationReducer = (state = _nullAnnotation, action) => {
  Object.freeze(state);
  let annotationComp;
  debugger
  switch(action.type) {
    case RECEIVE_ANNOTATION:
      return Object.assign({}, state, {[action.annotation.id]: action.annotation});
    case RECEIVE_TRACK:
      if(action.track.annotations) {
        return action.track.annotations;
      } else {
        return Object.assign({}, state);
      }
    default:
      return state;
  }
};

export default AnnotationReducer;
