import React from 'react';
import {Route, Redirect, Switch,
  Link, HashRouter} from 'react-router-dom';
import HeaderContainer from './home/header/header_container';
import ModalContainer from './home/header/modal/modal_container';
import AlbumIndexContainer from './home/index/album_index_container';
import AlbumShowContainer from './album_show/album_show_container';
import TrackShowContainer from './track_show/track_show_container';
import AnnotationContainer from './track_show/annotation/annotation_container';

const App = () => (
  <div>
    <HeaderContainer/>
    <ModalContainer/>
    <Route exact path="/" component={AlbumIndexContainer} />
    <Route exact path="/albums/:id" component={AlbumShowContainer} />
    <Route exact path="/albums/:id/:trackId" component={TrackShowContainer} />
    <Route exact path="/albums/:id/:trackId" component={AnnotationContainer} />
  </div>
);

export default App;
