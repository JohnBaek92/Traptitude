import merge from 'lodash/merge';
import { RECEIVE_TRACK } from '../actions/track_actions';

const _nullTrack = Object.freeze({});

const TrackReducer = (state = _nullTrack, action) => {
  switch(action.type) {
    case RECEIVE_TRACK:
      return action.track.track;
    default:
      return state;
  }
};

export default TrackReducer;
