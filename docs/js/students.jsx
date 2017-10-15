import React from 'react';

class Students extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const students = this.props.students;
    const studentAccounts = Object.keys(students);
    const names = studentAccounts.map((student, idx) => (
      <div className="student-info-container">
        <h3 key={idx + "student"}>{students[student].name}</h3>
        <div className="student-container">
          <img className="avatar" src={students[student].avatar_url}/>
          <ul>
            <li key={idx + "login"}>username: {students[student]["login"]}</li>
            <li key={idx + "repos"}>public_repos: {students[student]["public_repos"]}</li>
          </ul>
        </div>
      </div>
    ));

    return (
      <div>
        <h2>Students</h2>
        {names}
        <ul>

        </ul>
      </div>
    );
  }
}

export default Students;
