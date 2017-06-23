import merge from 'lodash/merge';
import { RECEIVE_ALBUMS } from '../actions/album_actions';

const _nullAlbum = Object.freeze({});

export default (state = _nullAlbum, action) => {
  switch(action.type) {
    case RECEIVE_ALBUMS:
      return merge({}, action.albums);
    default:
      return state;
  }
};
