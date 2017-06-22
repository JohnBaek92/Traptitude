import { connect } from 'react-redux';
import UserForm from './user_form';
import { closeModal, switchToSignUpForm } from '../../../actions/modal_actions';
import { signIn, clearErrors,
  loginGuest } from '../../../actions/session_actions';

const mapStateToProps = ({ session }) => {
  return {
    signedIn: Boolean(session.currentUser),
    errors: session.errors,
    formType: 'signIn'
  };
};

const mapDispatchToProps = (dispatch, state) => {
  return ({
    signIn: (user) => dispatch(signIn(user)),
    closeModal: () => dispatch(closeModal()),
    clearErrors: () => dispatch(clearErrors()),
    loginGuest: () =>dispatch(loginGuest()),
    switchToSignUpForm: () => dispatch(switchToSignUpForm())
  });
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(UserForm);
