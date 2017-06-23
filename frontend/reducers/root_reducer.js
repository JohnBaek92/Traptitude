import { combineReducers } from 'redux';
import SessionReducer from './session_reducer';
import ModalReducer from './modal_reducer';
import AlbumReducer from './album_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  modal: ModalReducer,
  album: AlbumReducer
});

export default RootReducer;
