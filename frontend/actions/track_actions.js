import * as APIUtil from '../util/track_api_util';

export const RECEIVE_TRACK = 'RECEIVE_TRACK';
export const RECEIVE_TRACKS = 'RECEIVE_TRACKS';

export const receiveTrack = track => ({
  type: RECEIVE_TRACK,
  track: track
});

export const receiveTracks = tracks => {
  return({
    type: RECEIVE_TRACKS,
    tracks: tracks
  })
};

export const displayTrack = (id) => dispatch => (
  APIUtil.fetchTrack(id).then(track => (
    dispatch(receiveTrack(track))
  ))
);

export const displayTopTracks = () => dispatch => (
  APIUtil.fetchTracks().then(tracks => (
    dispatch(receiveTracks(tracks))
  ))
);

export const createTrack = (track) => dispatch => (
  APIUtil.createTrack(track).then(track => (
    dispatch(receiveTrack(track))
  ))
);
