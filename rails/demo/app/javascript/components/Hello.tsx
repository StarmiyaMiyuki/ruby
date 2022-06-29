import React from "react";
// import { Link } from "react-router-dom";

type Props = {
  word: string,
};

// function component
const Hello = (props: Props) => {
  return (
    <React.Fragment>
      <p>Say, {props.word}</p>
      {/* <Link
       to="/home"
      >
        Go to Home
      </Link> */}
    </React.Fragment>
  );
};


export default Hello;
