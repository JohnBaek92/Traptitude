import { connect } from 'react-redux';
import AnnotationForm from './annotation_form';
import { makeAnnotation, closeAnnotation } from '../../../actions/annotation_actions';

const mapStateToProps = ({session}) => {
  return {
    session
  };
};

const mapDispatchToProps = (dispatch) => {
  return ({
    makeAnnotation: (annotation) => dispatch(makeAnnotation(annotation)),
    closeAnnotation: () => dispatch(closeAnnotation())
  });
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(AnnotationForm);
