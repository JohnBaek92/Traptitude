import merge from 'lodash/merge';
import { RECEIVE_ANNOTATION, OPEN_ANNOTATION,
  CLOSE_ANNOTATION } from '../actions/annotation_actions';

const _nullAnnotation = {
  isOpenAnno: false,
  annotationComp: null
};

const AnnotationReducer = (state = _nullAnnotation, action) => {
  Object.freeze(state);
  let annotationComp;
  switch(action.type) {
    case RECEIVE_ANNOTATION:
      return Object.assign({}, state, {[action.annotation.id]: action.annotation});
    case OPEN_ANNOTATION:
      annotationComp = action.annotationComp;
      return merge({}, state, {annotationComp, isOpenAnno: true});
    case CLOSE_ANNOTATION:
      return merge({}, state, {annotationComp: null, isOpenAnno: false});
    default:
      return state;
  }
};

export default AnnotationReducer;
