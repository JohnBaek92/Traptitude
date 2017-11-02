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
        <section className="top-footer">Inspired by <a className="top-footer hover-link" href="https://www.genius.com" target="_blank">Genius</a></section>
        <section className="bottom-footer">Cloned by <a className="bottom-footer hover-link" href="http://www.johnbaek.life" target="_blank">John Baek</a></section>
      </footer>
    )
  }
}

export default Footer;
