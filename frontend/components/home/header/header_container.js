import { connect } from 'react-redux';
import { signOut } from '../../../actions/session_actions';
import Header from './header';
import { openModal } from '../../../actions/modal_actions';
import { clearErrors } from '../../../actions/session_actions';

const mapStateToProps = ({ session }) => {
  return {
    currentUser: session.currentUser,
    loggedIn: Boolean(session.currentUser)
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    signOut: () => dispatch(signOut()),
    clearErrors: () => dispatch(clearErrors()),
    openModal: (component) => dispatch(openModal(component))
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Header);
