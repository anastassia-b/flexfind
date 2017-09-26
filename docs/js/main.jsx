import React from 'react';
import ReactDOM from 'react-dom';
import Students from './students';
import Repos from './repositories';
import Contributors from './contributors';

const studentRepos = require('../../data/sample_george.json');
const students = require('../../data/students.json');
const sampleContribs = require('../../data/sample_george_contributors.json');

const Root = () => (
  <div className="body-container">
    <h1>Flex Find</h1>
    <Repos studentRepos={studentRepos} />
    <Contributors sampleContribs={sampleContribs}/>
    <Students students={students}/>
  </div>
);

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  ReactDOM.render(<Root />, root);
});
