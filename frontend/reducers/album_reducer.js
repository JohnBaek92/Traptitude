import merge from 'lodash/merge';
import { RECEIVE_ALBUMS } from '../actions/album_actions';

const _nullAlbum = Object.freeze({});

const AlbumReducer = (state = _nullAlbum, action) => {
  switch(action.type) {
    case RECEIVE_ALBUMS:
      return merge({}, action.albums);
    default:
      return state;
  }
};

export default AlbumReducer;
