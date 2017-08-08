import * as APIUtil from '../util/track_api_util';

export const RECEIVE_TRACK = 'RECEIVE_TRACK';

export const receiveTrack = track => ({
  type: RECEIVE_TRACK,
  track: track
});

export const displayTrack = (id) => dispatch => (
  APIUtil.fetchTrack(id).then(track => (
    dispatch(receiveTrack(track))
  ))
);

export const createTrack = (track) => dispatch => (
  APIUtil.createTrack(track).then(track => (
    dispatch(receiveTrack(track))
  ))
);
