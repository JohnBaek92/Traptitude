import React from 'react';
import {Link} from 'react-router-dom';

const sessionLinks = () => (
  <nav className="signin-signup">
    <Link to="/sign-up">Sign Up</Link>
    &nbsp;or&nbsp;
    <Link to="/sign-in">Sign In</Link>
  </nav>
);


const headerButtons = ({ currentUser, signout }) => {
  const signOutButton = () => (
    <hgroup className="header-group">
      <button className="header-button" onClick={signout}>Sign Out</button>
    </hgroup>
  );
  return currentUser ? signOutButton() : sessionLinks();
}

export default headerButtons;
