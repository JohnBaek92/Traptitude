import React from 'react';
import {Route, Redirect, Switch,
  Link, HashRouter} from 'react-router-dom';
import HeaderContainer from './home/header/header_container';
import ModalContainer from './home/modal/modal_container';

const App = () => (
  <div>
      <section>
        <HeaderContainer/>
        <ModalContainer/>
      </section>
  </div>
);

export default App;
