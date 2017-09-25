import React from 'react';
import ReactDOM from 'react-dom';
import Home from './home.jsx';

const students = require('../../data/students.json');

const Root = () => (
  <div>
    <h1>Flex Find</h1>
    <Home students={students}/>
  </div>
);

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  ReactDOM.render(<Root />, root);
});
