import * as APIUtil from '../util/session_api_util';
import { fetchFavorites } from './favorite_actions';

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';
export const CLEAR_ERRORS = 'CLEAR_ERRORS';

export const receiveCurrentUser = currentUser => ({
  type: RECEIVE_CURRENT_USER,
  currentUser
});

export const clearErrors = () => ({
  type: CLEAR_ERRORS,
});

export const receiveErrors = errors => ({
  type: RECEIVE_ERRORS,
  errors
});

export const signUp = user => dispatch => (
  APIUtil.signup(user).then(user => (
    dispatch(receiveCurrentUser(user))
  ), err => (
    dispatch(receiveErrors(err.responseJSON))
  ))
);

export const signIn = user => dispatch => {
  return (APIUtil.signin(user).then(user => (
    dispatch(receiveCurrentUser(user))
  ).then(user => (
    dispatch(fetchFavorites(user.favorites))
  )), err => (
    dispatch(receiveErrors(err.responseJSON))
  )));
};

export const signOut = () => dispatch => (
  APIUtil.signout().then(user => (
    dispatch(receiveCurrentUser(null))
  ))
);

export const loginGuest = () => dispatch => (
  APIUtil.loginGuest().then(guest => dispatch(receiveCurrentUser(guest)))
);
