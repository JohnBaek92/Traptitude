import * as APIUtil from '../util/search_api_util';
import values from 'lodash/values';

export const RECEIVE_ALBUM_RESULTS = 'RECEIVE_ALBUM_RESULTS';

export const fetchAlbumResults = (albumData) => dispatch => {
  return(APIUtil.fetchAlbumResults(albumData)).then( albums => {
    dispatch(receiveAlbumResults(values(albums)))
  });
};

export const receiveAlbumResults = albums => {
  return({
    type: RECEIVE_ALBUM_RESULTS,
    albums
  });
};
