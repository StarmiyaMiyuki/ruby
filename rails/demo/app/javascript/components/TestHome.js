import React from "react"
import PropTypes from "prop-types"

class Home extends React.Component {
  render () {
    return (
      <React.Fragment>
        <p>This is test component.</p>
        <p>Greeting: {this.props.greeting}</p>
      </React.Fragment>
    );
  }
}

Home.propTypes = {
  greeting: PropTypes.string
};

export default Home
