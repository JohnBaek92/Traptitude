import { combineReducers } from 'redux';
import SessionReducer from './session_reducer';
import ModalReducer from './modal_reducer';
import AlbumReducer from './album_reducer';
import TrackReducer from './track_reducer';
import AnnotationReducer from './annotation_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  modal: ModalReducer,
  albums: AlbumReducer,
  tracks: TrackReducer,
  annotations: AnnotationReducer,
});

export default RootReducer;
