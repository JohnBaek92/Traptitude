import React from 'react';
import GreetingContainer from './greeting/greeting_container';
import {Route, Redirect, Switch,
  Link, HashRouter} from 'react-router-dom';
import SessionFormContainer from './session_form/session_form_container';

const App = () => (
  <div>
      <header>
        <h1>Trappin</h1>
        <GreetingContainer />
      </header>
      
    <Route path="/sign-up" component={SessionFormContainer} />
    <Route path="/sign-in" component={SessionFormContainer} />
  </div>
);

export default App;
