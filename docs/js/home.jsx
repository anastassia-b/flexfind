import React from 'react';

class Home extends React.Component {
  constructor(props) {
    super(props);
    console.log(this.props);
  }

  render() {
    const students = this.props.students;
    const studentAccounts = Object.keys(students);
    const names = studentAccounts.map((student, idx) => (
      <div className="student-info-container">
        <h3 key={idx + "student"}>{students[student].name}</h3>
        <ul>
        {
          Object.keys(students[student]).map((key, idx2) => (
            <li key={idx2 + "data"}>{key}: {students[student][key]}</li>
          ))
        }
        </ul>
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

export default Home;
