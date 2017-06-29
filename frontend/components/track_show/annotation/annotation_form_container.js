import { connect } from 'react-redux';
import AnnotationForm from './annotation_form';
import { makeAnnotation } from '../../../actions/annotation_actions';

const mapStateToProps = ({session}) => {
  return {
    session
  };
};

const mapDispatchToProps = (dispatch) => {
  return ({
    makeAnnotation: (annotation) => dispatch(makeAnnotation(annotation))
  });
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(AnnotationForm);
