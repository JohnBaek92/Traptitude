import { connect } from 'react-redux';
import UserForm from './user_form';
import { closeModal } from '../../../actions/modal_actions';
import { signUp, clearErrors } from '../../../actions/session_actions';

const mapStateToProps = ({ session }) => {
  return {
    loggedIn: Boolean(session.currentUser),
    errors: session.errors,
  };
};

const mapDispatchToProps = (dispatch, { location}) => {
  return ({
    signUp: (user) => dispatch(signUp(user)),
    closeModal: () => dispatch(closeModal()),
    clearErrors: () => dispatch(clearErrors()),
  });
};

export const SignUpContainer = connect(
  mapStateToProps,
  mapDispatchToProps
)(UserForm);
