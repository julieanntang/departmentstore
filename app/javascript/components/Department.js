import React from "react";

const Department = (props) => {
  return (
    <div>
      <h1>Department</h1>
      <p>{`${JSON.stringify(props.department)}`}</p>
    </div>
  );
};

export default Department;