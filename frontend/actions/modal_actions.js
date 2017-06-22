export const OPEN = 'OPEN';
export const CLOSE = 'CLOSE';

export const openModal = (component) => ({
  type: OPEN,
  component
});

export const closeModal = (component) => ({
  type: CLOSE,
  component: null
});
