import { connect } from 'react-redux';
import AnnotationShow from './annotation_show';
import { closeAnnotation } from '../../../actions/annotation_actions';

const mapStateToProps = (state) => {
  debugger
  return {
    annotations: state.annotations,
    isOpenAnno: state.annotationModal.isOpenAnno,
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
