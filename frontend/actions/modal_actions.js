export const OPEN = 'OPEN';
export const CLOSE = 'CLOSE';
export const SWITCH_TO_SIGN_UP_FORM = 'SWITCH_TO_SIGN_UP_FORM';
export const SWITCH_TO_SIGN_IN_FORM = 'SWITCH_TO_SIGN_IN_FORM';

export const openModal = (component) => ({
  type: OPEN,
  component
});

export const closeModal = (component) => ({
  type: CLOSE,
  component: null
});

export const switchToSignUpForm = () => ({
  type: SWITCH_TO_SIGN_UP_FORM,
});

export const switchToSignInForm = () => ({
  type: SWITCH_TO_SIGN_IN_FORM,
});
