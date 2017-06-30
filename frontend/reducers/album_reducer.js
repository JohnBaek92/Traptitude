import merge from 'lodash/merge';
import { RECEIVE_ALBUMS, RECEIVE_ALBUM } from '../actions/album_actions';

const _nullAlbum = Object.freeze({
  null: {
    title: "",
    release_date: "",
    musician: "",
    image: "",
  }
});

const AlbumReducer = (state = _nullAlbum, action) => {
  switch(action.type) {
    case RECEIVE_ALBUMS:
      return action.albums;
    case RECEIVE_ALBUM:
      return Object.assign({}, state, {[action.album.id]: action.album});
    default:
      return state;
  }
};

export default AlbumReducer;
