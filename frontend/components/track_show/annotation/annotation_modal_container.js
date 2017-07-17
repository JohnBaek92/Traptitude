import { connect } from 'react-redux';
import Annotation from './annotation_modal';
import { closeAnnotation } from '../../../actions/annotation_actions';

const mapStateToProps = (state) => {
  return {
    isOpenAnno: state.annotationModal.isOpenAnno,
    annotationComp: state.annotationModal.annotationComp
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
)(Annotation);
