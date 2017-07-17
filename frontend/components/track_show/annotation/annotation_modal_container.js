import { connect } from 'react-redux';
import Annotation from './annotation_modal';
import { closeAnnotation } from '../../../actions/annotation_actions';

const mapStateToProps = ({annotationModal}) => {
  return {
    isOpenAnno: annotationModal.isOpenAnno,
    annotationComp: annotationModal.annotationComp
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
