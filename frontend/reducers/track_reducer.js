import merge from 'lodash/merge';
import { RECEIVE_TRACK, RECEIVE_TRACKS } from '../actions/track_actions';

const _nullTrack = Object.freeze({});

const TrackReducer = (state = _nullTrack, action) => {
  switch(action.type) {
    case RECEIVE_TRACK:
      return Object.assign({}, action.track.track);
    case RECEIVE_TRACKS:
      return Object.assign({}, action.tracks)
    default:
      return state;
  }
};

export default TrackReducer;
