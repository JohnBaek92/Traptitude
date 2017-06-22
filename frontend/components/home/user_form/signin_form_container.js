import { connect } from 'react-redux';
import UserForm from './user_form';
import { closeModal } from '../../../actions/modal_actions';
import { signIn, clearErrors,
  loginGuest } from '../../../actions/session_actions';

const mapStateToProps = ({ session }) => {
  return {
    signedIn: Boolean(session.currentUser),
    errors: session.errors,
  };
};

const mapDispatchToProps = (dispatch, state) => {
  return ({
    signIn: (user) => dispatch(signIn(user)),
    closeModal: () => dispatch(closeModal()),
    clearErrors: () => dispatch(clearErrors()),
    loginGuest: () =>dispatch(loginGuest()),
  });
};

export const SignInContainer = connect(
  mapStateToProps,
  mapDispatchToProps
)(UserForm);
