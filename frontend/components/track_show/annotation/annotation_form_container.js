import { connect } from 'react-redux';
import AnnotationForm from './annotation_form';
import { makeAnnotation } from '../../../actions/annotation_actions';

const mapStateToProps = (state) => {
  return {
    body: '',
    start_idx: '',
    end_idx: ''
  };
};

const mapDispatchToProps = (dispatch) => {
  return ({
    makeAnnotation: (annotation) => dispatch(makeAnnotation)
  });
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(AnnotationForm);
