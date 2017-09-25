import React from 'react';

class Repos extends React.Component {
  constructor(props) {
    super(props);

    // console.log(props);
  }

  render() {
    const studentRepos = this.props.studentRepos;
    const repos = Object.keys(studentRepos);
    const repoInfo = repos.map((repo, idx) => (
      <li key={idx + "repo"}>{repo}</li>
    ));

    return (
      <div>
        <h2>Repositories</h2>
        <h3>(Under testing)</h3>
        <ul>
          {repoInfo}
        </ul>
      </div>
    );
  }
}

export default Repos;
