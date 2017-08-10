import React from 'react';
import ReactDOM from 'react-dom';
import { Link, Redirect } from 'react-router-dom';
import Modal from './modal/modal_container';
import SignInContainer from './user_form/signin_form_container';
import SignUpContainer from './user_form/signup_form_container';
import LinkedIN from 'react-icons/lib/ti/social-linkedin';
import Github from 'react-icons/lib/ti/social-github';

class Header extends React.Component {
  constructor(props){
    super(props);
    this.logOutClick = this.logOutClick.bind(this);
    this.clearErrorsAndOpenModal = this.clearErrorsAndOpenModal.bind(this);
  }

  logOutClick(e){
    e.preventDefault();
    this.props.signOut();
  }

  clearErrorsAndOpenModal(component){
    this.props.clearErrors();
    this.props.openModal(component);
  }

  signedInHeader() {
    if(this.props.currentUser) {
      return(
        <section className="top-header">
          <div className="search-bar"></div>
          <Link className="logo" to="/"><img className="logo-picture" src={window.images.logo}/></Link>
          <div className="user-input">
            <button className="username">   Stats</button>
            <button className="password" onClick={this.logOutClick}>Sign Out</button>
          </div>
        </section>
      )
    }
  }

  signedOutHeader(){
    if(!this.props.currentUser){
      return(
        <header className="top-header">
          <div className="search-bar"></div>
          <Link className="logo" to="/"><img className="logo-picture" src={window.images.logo}/></Link>
          <div className="user-input">
            <button className="username" onClick={ () => this.clearErrorsAndOpenModal(
              <SignInContainer />)}>
               Sign In
            </button>
            <button className="password" onClick={ () => this.clearErrorsAndOpenModal(
              <SignUpContainer />)}>
               Sign Up
            </button>
          </div>
        </header>
      )
    }
  }

  navbar() {
    return(
      <navbar className="nav-bar">
        <a id="featured-stories" href="#featured-stories">Featured Stories</a>
        <a id="top-tracks" href="#top-tracks">Top Tracks</a>
        <span id="first-bar">|</span>
        <Link id="forums" to="/forums">Forums</Link>
        <Link id="add-album" to="/add-album">Add Album</Link>
        <span id="second-bar">|</span>
        <a id="linkedin-icon" href="https://www.linkedin.com/in/john-baek-49b6114a/"
          target="_blank"><LinkedIN size={25} /></a>
        <a id="github-icon" href="https://github.com/johnbaek92"
          target="_blank"><Github size={28}  /></a>
      </navbar>
    )
  }

  render(){
    return(
      <section>
        {this.signedOutHeader()}
        {this.signedInHeader()}
        {this.navbar()}
      </section>
    )
  }
};

export default Header;
