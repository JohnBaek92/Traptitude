// import { createStore, applyMiddleware } from 'redux';
// import thunk from "../middleware/thunk_middleware";
// import logger from 'redux-logger';
// import RootReducer from '../reducers/root_reducer';
//
// const configureStore = (preloadedState = {}) => (
//   createStore(
//     RootReducer,
//     preloadedState,
//     applyMiddleware(thunk, logger))
// );
//
// export default configureStore;

import { createStore, applyMiddleware } from 'redux';
import thunk from "../middleware/thunk_middleware";
import RootReducer from '../reducers/root_reducer';

const middlewares = [thunk];

if (process.env.NODE_ENV !== 'production') {
  // must use 'require' (import only allowed at top of file)
  const createLogger = require('redux-logger');
  middlewares.push(createLogger());
}

const configureStore = (preloadedState = {}) => (
  createStore(RootReducer, preloadedState, applyMiddleware(...middlewares))
);

export default configureStore;
