import * as APIUtil from '../util/favorite_api_util';

export const RECEIVE_FAVORITE = "RECEIVE_FAVORITE";
export const DELETE_FAVORITE = "DELETE_FAVORITE";
export const RECEIVE_FAVORITES = "RECEIVE_FAVORITES";

export const receiveFavorite = (favorite) => {
  return {
    type: RECEIVE_FAVORITE,
    favorite
  };
};

export const deleteFavorite = (favorite) => {
  return {
    type: DELETE_FAVORITE,
    favorite
  };
};

export const fetchFavorites = (favorites) => {
  debugger
  return {
    type: RECEIVE_FAVORITES,
    favorites
  };
};

export const createFavorite = (favorite) => dispatch => (
  APIUtil.createFavorite(favorite).then(favorite => (
    dispatch(receiveFavorite(favorite))
  ))
);

export const removeFavorite = (favorite) => dispatch => (
  APIUtil.deleteFavorite(favorite).then(favorite => (
    dispatch(deleteFavorite(favorite))
  ))
);
