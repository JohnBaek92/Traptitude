import React from 'react';
import {Route, Redirect, Switch,
  Link, HashRouter} from 'react-router-dom';
import HeaderContainer from './home/header/header_container';
import ModalContainer from './home/header/modal/modal_container';
import AlbumIndexContainer from './home/index/album_index_container';
import AlbumShowContainer from './album_show/album_container';

const App = () => (
  <div>
    <HeaderContainer/>
    <ModalContainer/>
    <Route exact path="/" component={AlbumIndexContainer} />
    <Route exact path="/albums/:id" component={AlbumShowContainer} />
  </div>
);

export default App;
