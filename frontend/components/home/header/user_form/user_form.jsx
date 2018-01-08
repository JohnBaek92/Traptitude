import React from 'react';
import { Link, withRouter } from 'react-router-dom';

class UserForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: '',
      password: '',
      email: ''
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleGuestLogin = this.handleGuestLogin.bind(this);
    this.clearErrorsAndSwitchToSignInForm = this.clearErrorsAndSwitchToSignInForm.bind(this);
    this.clearErrorsAndSwitchToSignUpForm = this.clearErrorsAndSwitchToSignUpForm.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  componentWillReceiveProps(newProps) {
    if (newProps.formType !== this.props.formType){
			this.props.clearErrors();
		}
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state);
 		if (this.props.formType === 'signIn'){
 			this.props.signIn({user}).then(this.props.closeModal);
 		} else if (this.props.formType === 'signUp'){
 			this.props.signUp({user}).then(this.props.closeModal);
 		}
    this.setState({username: '', password: ''});
  }

  handleGuestLogin(e) {
    e.preventDefault();
    this.props.loginGuest().then(this.props.closeModal);
  }

  handleEmail() {
    if(this.props.formType === 'signUp') {
      return(
        <div>
          <div className="email-input-container">
            <input type="text"
              value={this.state.email}
              placeholder="Email"
              onChange={this.update('email')}
              className="email-input"/>
          </div>
        </div>
      )} else {
        return(
          <div></div>
        )
      };
    }

  createOrLogin() {
    if(this.props.formType === 'signUp') {
      return(
        <section>
          <div className="create-or-login">
            Sign Up For Traptitude
            <hr className="dividing-line" />
          </div>
        </section>
      )} else {
        return(
          <section>
            <div className="create-or-login">
              Sign In To Traptitude
              <hr className="dividing-line" />
            </div>
          </section>
        )
      }
    }

  renderErrors() {
      return(
        <ul className="session-errors">
          {this.props.errors.map((error, i) => (
            <li key={`error-${i}`}>
              {error}
            </li>
          ))}
        </ul>
      );
  }

  clearErrorsAndSwitchToSignInForm() {
    this.props.switchToSignInForm();
    this.props.clearErrors();
  }

  clearErrorsAndSwitchToSignUpForm() {
    this.props.switchToSignUpForm();
    this.props.clearErrors();
  }

  footer() {
    if (this.props.formType === 'signUp') {
      return(
        <div className="sign-up-footer">
          <input className="submit-button" type="submit" value="Sign Up" />
          <div className="switch-sign-in"
            onClick={this.clearErrorsAndSwitchToSignInForm}>
            ALREADY HAVE AN ACCOUNT? SIGN IN HERE
          </div>
        </div>
      )
    } else {
      return (
        <div className="sign-in-footer">
          <input className="submit-button" type="submit" value="Sign In" />
          <button className="guest-login" onClick={(e) => this.handleGuestLogin(e)}>Guest</button>
          <div className="switch-sign-up"
            onClick={this.clearErrorsAndSwitchToSignUpForm}>
            CREATE AN ACCOUNT
          </div>
        </div>
      )
    }
  }

  render() {
    return (
      <div className="user-form-container">
        <form onSubmit={this.handleSubmit} className="user-form-box">
          {this.createOrLogin()}
          {this.renderErrors()}
          <div className="user-form">
            <div className="username-input-container">
              <input type="text"
                value={this.state.username}
                placeholder="Username"
                onChange={this.update('username')}
                className="username-input"/>
            </div>
            {this.handleEmail()}
            <div className="password-input-container">
              <input type="password"
                value={this.state.password}
                onChange={this.update('password')}
                placeholder="Password"
                className="password-input"/>
            </div>
            {this.footer()}
        </div>
      </form>
    </div>
    );
  }
}

export default withRouter(UserForm);
