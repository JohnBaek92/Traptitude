import React from 'react';
import ReactDOM from 'react-dom';
import { Link } from 'react-router-dom';

class Footer extends React.Component {
  constructor(props) {
    super(props)
  }

  render(){
    return(
      <footer className="footer">
        <section className="top-footer">Inspired by Genius</section>
        <section className="bottom-footer">Cloned by John Baek</section>
      </footer>
    )
  }
}

export default Footer;
