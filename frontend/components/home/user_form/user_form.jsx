import React from 'react';
import { Link, withRouter } from 'react-router-dom';

class UserForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: '',
      password: ''
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
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

  changeForm(e) {
    e.preventDefault();
    if(this.props.formType === 'signIn') {
      this.props.formType = 'signUp';
    } else {
      this.props.formType = 'signIn';
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

  render() {
    return (
      <div className="user_form_container">
        <form onSubmit={this.handleSubmit} className="user_form_box">
          Sign In To Traptitude
          {this.renderErrors()}
          <div className="user-form">
            <label>
              <input type="text"
                value={this.state.username}
                placeholder="Username"
                onChange={this.update('username')}
                className="username_input"/>
            </label>
            <br/>
            <label>
              <input type="password"
                value={this.state.password}
                onChange={this.update('password')}
                placeholder="Password"
                className="password_input"/>
            </label>
            <br/>
            <input type="submit" value="Submit" />
            <br/>
            // <button onClick={this.changeForm}></button>
          </div>
        </form>
      </div>
    );
  }
}

export default withRouter(UserForm);
