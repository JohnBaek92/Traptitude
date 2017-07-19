import { connect } from 'react-redux';
import AnnotationShow from './annotation_show';
import { closeAnnotation, updateAnnotation, removeAnnotation } from '../../../actions/annotation_actions';
import { openModal } from '../../../actions/modal_actions';

const mapStateToProps = ({annotations, annotationModal, session}) => {
  return {
    annotations: annotations,
    session: session,
    isOpenAnno: annotationModal.isOpenAnno,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    closeAnnotation: () => dispatch(closeAnnotation()),
    updateAnnotation: (annotation) => dispatch(updateAnnotation(annotation)),
    removeAnnotation: (annotation) => dispatch(removeAnnotation(annotation)),
    openModal: (component) => dispatch(openModal(component))
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(AnnotationShow);
