import {OPEN, CLOSE} from '../actions/modal_actions';
import merge from 'lodash/merge';

const defaultState = {
  isOpen: false,
  component: ''
};

const ModalReducer = (state = defaultState, action) => {
  switch(action.type){
    case OPEN:
      const component = action.component;
      return merge({}, state, {component, isOpen: true});
    case CLOSE:
      return merge({}, state, {component: null, isOpen: false});
    default:
      return state;
  }
};

export default ModalReducer;
