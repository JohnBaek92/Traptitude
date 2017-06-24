import * as APIUtil from '../util/album_api_util';

export const RECEIVE_ALBUMS = 'RECEIVE_ALBUMS';

export const receiveAlbums = albums => ({
  type: RECEIVE_ALBUMS,
  albums
});

export const displayTopTen = () => dispatch => (
  APIUtil.fetchAlbums().then(albums => (
    dispatch(receiveAlbums(albums))
  ))
);
