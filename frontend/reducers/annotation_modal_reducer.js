import merge from 'lodash/merge';
import { OPEN_ANNOTATION,
  CLOSE_ANNOTATION } from '../actions/annotation_actions';

const _nullAnnotationModal = {
  isOpenAnno: false,
  annotationComp: null
};

const AnnotationModalReducer = (state = _nullAnnotationModal, action) => {
  Object.freeze(state);
  let annotationComp;
  switch(action.type) {
    case OPEN_ANNOTATION:
      annotationComp = action.annotationComp;
      return merge({}, state, {annotationComp, isOpenAnno: true});
    case CLOSE_ANNOTATION:
      return merge({}, state, {annotationComp: null, isOpenAnno: false});
    default:
      return state;
  }
};

export default AnnotationModalReducer;
