import React from "react";

type Props = {
  greeting: string,
};

// function component
const Home = (props: Props) => {
  return (
    <React.Fragment>
      <p>Greeting: {props.greeting}</p>
      <p>maybe ok?</p>
      <a href="/hello">Go to hello</a>
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
