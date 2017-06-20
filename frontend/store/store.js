import { createStore, applyMiddleware } from 'redux';
import thunk from "../middleware/thunk_middleware";
import logger from 'redux-logger';
import RootReducer from '../reducers/root_reducer';

const configureStore = (preloadedState = {}) => (
  createStore(
    RootReducer,
    preloadedState,
    applyMiddleware(thunk, logger))
);

export default configureStore;
