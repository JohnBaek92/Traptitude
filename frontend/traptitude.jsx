import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import {signin, signup} from './util/session_api_util';

window.signin = signin;
window.signup = signup;

// document.addEventListener('DOMContentLoaded', () => {
//   const store = configureStore();
//   window.getState = store.getState;
//   window.dispatch = store.dispatch;
//   const root = document.getElementById('root');
//   ReactDOM.render(<Root store = {store} />, root);
// });

document.addEventListener('DOMContentLoaded', () => {
  let store;
  if (window.currentUser) {
    const preloadedState = { session: { currentUser: window.currentUser } };
    store = configureStore(preloadedState);
    delete window.currentUser;
  } else {
    store = configureStore();
  }
  window.getState = store.getState;
  window.dispatch = store.dispatch;
  const root = document.getElementById('root');
  ReactDOM.render(<Root store={store} />, root);
});
