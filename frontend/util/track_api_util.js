export const fetchTrack = (id) => {
  return $.ajax({
    method: 'GET',
    url: `/api/tracks/${id}`,
  });
};

export const createTrack = (track) => {
  return $.ajax({
      method: 'POST',
      url: '/api/tracks',
      data: track
  });
};
