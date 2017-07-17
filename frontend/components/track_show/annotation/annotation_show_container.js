import { connect } from 'react-redux';
import AnnotationShow from './annotation_show';
import { closeAnnotation } from '../../../actions/annotation_actions';

const mapStateToProps = ({annotations, annotationModal, session}) => {
  debugger
  return {
    annotations: annotations,
    session: session,
    isOpenAnno: annotationModal.isOpenAnno,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    closeAnnotation: () => dispatch(closeAnnotation())
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(AnnotationShow);
