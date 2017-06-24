export const fetchAlbums = () => {
  return $.ajax({
    method: 'GET',
    url: '/api/albums',
  });
};
