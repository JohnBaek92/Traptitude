import React from 'react';
import {Route, Redirect, Switch,
  Link, HashRouter} from 'react-router-dom';
import HeaderContainer from './home/header/header_container';
import ModalContainer from './home/header/modal/modal_container';
import AlbumContainer from './home/album/album_container';

const App = () => (
  <div>
      <section>
        <HeaderContainer/>
        <ModalContainer/>
        <AlbumContainer/>
      </section>
  </div>
);

export default App;
