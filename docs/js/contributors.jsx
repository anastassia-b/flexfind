import React from 'react';

class Contributors extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const contribs = this.props.sampleContribs;
    console.log(contribs);
    const contribInfo = Object.keys(contribs).map((idx) => (
      <li key={idx + "contrib"}>{contribs[idx].login}</li>
    ));
    return (
      <div>
        <h2>Sample Repo Contributors</h2>
        <ul>
          {contribInfo}
        </ul>
      </div>
    );
  }
}

export default Contributors;
