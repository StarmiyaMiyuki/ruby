import React from "react";
import { Link } from "react-router-dom";

type Props = {
  greeting: string,
};

// function component
const Home = (props: Props) => {
  return (
    <React.Fragment>
      <p>Greeting: {props.greeting}</p>
      <p>maybe ok?</p>
      <Link
       to="/hello"
      >
        Go to Hello
      </Link>
    </React.Fragment>
  );
};

// // class component
// class Home extends React.Component {
//   render () {
//     return (
//       <React.Fragment>
//         Greeting: {this.props.greeting}
//       </React.Fragment>
//     );
//   }
// }

export default Home;
