import {OPEN, CLOSE,
  SWITCH_TO_SIGN_UP_FORM, SWITCH_TO_SIGN_IN_FORM} from '../actions/modal_actions';
import merge from 'lodash/merge';
import React from 'react';
import SignInContainer from '../components/home/user_form/signin_form_container';
import SignUpContainer from '../components/home/user_form/signup_form_container';

const defaultState = {
  isOpen: false,
  component: null
};

const ModalReducer = (state = defaultState, action) => {
  let component;
  switch(action.type){
    case OPEN:
      component = action.component;
      return merge({}, state, {component, isOpen: true});
    case CLOSE:
      return merge({}, state, {component: null, isOpen: false});
    case SWITCH_TO_SIGN_IN_FORM:
      return merge({}, state, {component: <SignInContainer />});
    case SWITCH_TO_SIGN_UP_FORM:
      return merge({}, state, {component: <SignUpContainer />});
    default:
      return state;
      }
  };

export default ModalReducer;
