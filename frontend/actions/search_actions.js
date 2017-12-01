import * as APIUtil from '../util/search_api_util';
import values from 'lodash/values';

export const REMOVE_ALBUMS = 'REMOVE_ALBUMS';
export const RECEIVE_ALBUM_RESULTS = 'RECEIVE_ALBUM_RESULTS';


export const removeAlbums = () => ({
  type: REMOVE_ALBUMS,
})

export const receiveAlbumResults = albums => {
  return({
    type: RECEIVE_ALBUM_RESULTS,
    albums
  });
};

export const fetchAlbumResults = (albumData) => dispatch => {
  return(APIUtil.fetchAlbumResults(albumData)).then( albums => {
    dispatch(receiveAlbumResults(values(albums)))
  });
};

export const clearAlbums = () => dispatch => {
  dispatch(removeAlbums());
};
