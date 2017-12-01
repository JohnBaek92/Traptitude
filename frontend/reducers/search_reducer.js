import { RECEIVE_ALBUM_RESULTS, REMOVE_ALBUMS } from '../actions/search_actions';

const _defaultState = {albums: [], tracks: []};

const SearchReducer = (state = _defaultState, action ) => {
  Object.freeze(state);
  let results;

  switch(action.type) {
    case RECEIVE_ALBUM_RESULTS:
      results = Object.assign({}, state);
      results.albums = action.albums;
      return results;
    case REMOVE_ALBUMS:
      return _defaultState;
    default:
      return state;
  }
};

export default SearchReducer;
