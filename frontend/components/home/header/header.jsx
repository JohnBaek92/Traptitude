import React from 'react';
import ReactDOM from 'react-dom';
import Modal from '../modal/modal_container';
import {SignInContainer} from '../user_form/signin_form_container';
import {SignUpContainer} from '../user_form/signup_form_container';

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
        <section>
          <button onClick={this.logOutClick}>Sign Out</button>
        </section>
      )
    }
  }

  signedOutHeader(){
    if(!this.props.currentUser){
      return(
        <section>
          <button onClick={ () => this.clearErrorsAndOpenModal(
            <SignUpContainer formType="signUp"/>)}>
              Sign Up
          </button>
          <button onClick={ () => this.clearErrorsAndOpenModal(
            <SignInContainer formType="signIn"/>)}>
              Sign In
          </button>

        </section>
      )
    }
  }

  render(){
    return(
      <header>
        {this.signedOutHeader()}
        {this.signedInHeader()}
      </header>
    )
  }
};

export default Header;
