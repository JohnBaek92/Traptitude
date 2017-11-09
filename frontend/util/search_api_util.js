export const fetchAlbumResults = (albumData) => {
  return(
    $.ajax({
      method: 'GET',
      url: '/api/albums',
      data: { albumData }
    })
  );
};
