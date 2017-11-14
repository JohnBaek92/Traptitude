export const fetchAlbumResults = (searchAlbumData) => {
  return(
    $.ajax({
      method: 'GET',
      url: '/api/albums',
      data: { searchAlbumData }
    })
  );
};
