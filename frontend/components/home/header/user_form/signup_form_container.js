import { connect } from 'react-redux';
import UserForm from './user_form';
import { closeModal, switchToSignInForm } from '../../../../actions/modal_actions';
import { signUp, clearErrors } from '../../../../actions/session_actions';

const mapStateToProps = ({ session }) => {
  return {
    loggedIn: Boolean(session.currentUser),
    errors: session.errors,
    formType: 'signUp'
  };
};

const mapDispatchToProps = (dispatch, { location}) => {
  return ({
    signUp: (user) => dispatch(signUp(user)),
    closeModal: () => dispatch(closeModal()),
    clearErrors: () => dispatch(clearErrors()),
    switchToSignInForm: () => dispatch(switchToSignInForm())
  });
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(UserForm);
