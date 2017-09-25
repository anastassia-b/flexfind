import React from 'react';
import ReactDOM from 'react-dom';
import Home from './home.jsx';

const json = require('../../data/testing.json');

const Root = () => (
  <div>
    <h1>Flex Find</h1>
    <Home student={json}/>
  </div>
);

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  ReactDOM.render(<Root />, root);
});
