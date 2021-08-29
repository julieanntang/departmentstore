import React from "react";

const Items = (props) => {
  return (
    <div>
      <h1>Items Page</h1>
      <p>Department</p>
      {JSON.stringify(props.department)}
      <p>Items</p>
      {JSON.stringify(props.items)}
    </div>
  );
};

export default Items;