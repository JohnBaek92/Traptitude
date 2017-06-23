export const receiveAlbums = albums => (
  $.ajax({
    method: 'GET',
    url: '/api/albums',
    data: albums
  })
);
