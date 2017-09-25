import React from 'react';

class Home extends React.Component {
  constructor(props) {
    super(props);
    console.log(this.props);
  }

  render() {
    const student = this.props.student;
    const keys = Object.keys(student);
    const info = keys.map((key, idx) => (
                <li key={idx}>{key}: {student[key]}</li>));

    return (
      <div>
        <h2>Students</h2>
        <h3>{student.name}</h3>
        <ul>
          {info}
        </ul>
      </div>
    );
  }
}

export default Home;
