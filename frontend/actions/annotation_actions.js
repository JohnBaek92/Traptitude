import * as APIUtil from '../util/annotation_api_util';

export const OPEN_ANNOTATION = "OPEN_ANNOTATION";
export const CLOSE_ANNOTATION = "CLOSE_ANNOTATION";
export const RECEIVE_ANNOTATION = "RECEIVE_ANNOTATION";

export const openAnnotation = (annotationComp) => {
  return {
    type: OPEN_ANNOTATION,
    annotationComp
  };
};

export const closeAnnotation = (annotationComp) => {
  return {
    type: CLOSE_ANNOTATION,
    annotationComp: null
  };
};

export const receiveAnnotation = (annotation) => {
  return {
    type: RECEIVE_ANNOTATION,
    annotation
  };
};

export const displayAnnotation = (id) => (dispatch) => (
  APIUtil.fetchAnnotation(id)
  .then(annotation => dispatch(receiveAnnotation(annotation)))
);

export const makeAnnotation = (annotation) => dispatch => (
  APIUtil.createAnnotation(annotation).then(annotation => (
    dispatch(receiveAnnotation(annotation))
  ))
);

export const updateAnnotation = (annotation) => dispatch => (
  APIUtil.updateAnnotation(annotation).then(annotation => (
    dispatch(receiveAnnotation(annotation))
  ))
);
