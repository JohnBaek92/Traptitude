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
          <input type="text"
            value={this.state.email}
            placeholder="Email"
            onChange={this.update('email')}
            className="email-input"/>
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
        <div>
          Create An Account
        </div>
      )} else {
        return(
          <div>
            Sign In
          </div>
        )
      }
    }

  renderErrors() {
    return(
      <ul>
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  footer() {
    if (this.props.formType === 'signUp') {
      return(
        <div className="sign-up-footer">
          <input type="submit" value="Submit" />
          <div className="switch"
            onClick={this.props.switchToSignInForm}>
            already have an account? sign in here
          </div>
        </div>
      )
    } else {
      return (
        <div className="sign-in-footer">
          <input type="submit" value="Submit" />
          <button onClick={(e) => this.handleGuestLogin(e)}>Guest</button>
          <div className="switch"
            onClick={this.props.switchToSignUpForm}>
            create an account
          </div>
        </div>
      )
    }

  }

  render() {
    return (
      <div className="user_form_container">
        <form onSubmit={this.handleSubmit} className="user_form_box">
          {this.createOrLogin()}
          {this.renderErrors()}
          <div className="user-form">
              <input type="text"
                value={this.state.username}
                placeholder="Username"
                onChange={this.update('username')}
                className="username-input"/>
            {this.handleEmail()}
            <input type="password"
              value={this.state.password}
              onChange={this.update('password')}
              placeholder="Password"
              className="password_input"/>
          <br/>
            {this.footer()}
          <br/>
        </div>
      </form>
    </div>
    );
  }
}

export default withRouter(UserForm);
