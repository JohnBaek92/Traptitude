import merge from 'lodash/merge';
import { RECEIVE_ALBUMS, RECEIVE_ALBUM } from '../actions/album_actions';

const _nullAlbum = Object.freeze({
  null: {
    title: "",
    release_date: "",
    musician: "",
    image_url: "",
    tracks: []
  }
});

const AlbumReducer = (state = _nullAlbum, action) => {
  switch(action.type) {
    case RECEIVE_ALBUMS:
      return merge({}, action.albums);
    case RECEIVE_ALBUM:
    debugger
      return merge({}, state, {album: action.album});
    default:
      return state;
  }
};

export default AlbumReducer;
