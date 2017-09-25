import React from 'react';
import ReactDOM from 'react-dom';
import Students from './students';
import Repos from './repositories';

const studentRepos = require('../../data/sample_george.json');
const students = require('../../data/students.json');

const Root = () => (
  <div>
    <h1>Flex Find</h1>
    <Repos studentRepos={studentRepos} />
    <Students students={students}/>
  </div>
);

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  ReactDOM.render(<Root />, root);
});
