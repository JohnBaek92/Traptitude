export const fetchAnnotation = (id) => {
  return $.ajax({
    method: 'GET',
    url: `api/annotations/${id}`,
  });
};

export const fetchAllAnnotation = () => {
  return $.ajax({
    method: 'GET',
    url: `api/annotations/`
  });
};

export const createAnnotation = (annotation) => {
  return $.ajax({
    method: 'POST',
    url: `api/annotations`,
    data: annotation,
  });
};

export const deleteAnnotation = (id) => {
  return $.ajax({
    method: 'DELETE',
    url: `api/annotations/${id}`
  });
};

export const updateAnnotation = (annotation) => {
  debugger
  return $.ajax({
    method: 'PATCH',
    url: `api/annotations/${annotation.id}`,
    data: { annotation: annotation }
  });
};
