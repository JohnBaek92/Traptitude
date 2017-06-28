import { connect } from 'react-redux';
import Annotation from './annotation';
import { closeAnnotation } from '../../../actions/annotation_actions';

const mapStateToProps = (state) => {
  return {
    isOpenAnno: state.annotation.isOpenAnno,
    annotationComp: state.annotationComp
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
