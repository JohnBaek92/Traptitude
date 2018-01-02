import React from 'react';
import ReactDOM from 'react-dom';
import { Link, Redirect } from 'react-router-dom';
import Modal from './modal/modal_container';
import SignInContainer from './user_form/signin_form_container';
import SignUpContainer from './user_form/signup_form_container';
import LinkedIN from 'react-icons/lib/ti/social-linkedin';
import Github from 'react-icons/lib/ti/social-github';
import { HashLink as HashLink } from 'react-router-hash-link';
import SearchBar from './search/search_bar_container';

class Header extends React.Component {
  constructor(props){
    super(props);

    this.logOutClick = this.logOutClick.bind(this);
    this.clearErrorsAndOpenModal = this.clearErrorsAndOpenModal.bind(this);
  }

  logOutClick(e){
    e.preventDefault();
    this.props.closeAnnotation();
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
          <SearchBar />
          <Link className="logo" to="/"><img className="logo-picture" src={window.images.logo}/></Link>
          <div className="user-input">
            {/* <button className="username">   Stats</button> */}
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
          <SearchBar />
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
        <HashLink id="featured-stories-link" className="hover-link" to="/#featured-info">Featured Info</HashLink>
        <span id="first-bar">|</span>
        <HashLink id="top-albums-link" className="hover-link" to="/#top-albums">Top Albums</HashLink>
        <span id="first-bar">|</span>
        {/* <Link id="forums" to="/forums">Forums</Link> */}
        <Link id="add-album" className="hover-link" to="/add-album">Add Album</Link>
        <span id="second-bar">|</span>
        <a id="linkedin-icon" className="hover-link" href="https://www.linkedin.com/in/john-baek-49b6114a/"
          target="_blank"><LinkedIN size={25} /></a>
        <a id="github-icon" className="hover-link" href="https://github.com/johnbaek92"
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
