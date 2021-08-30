import React from "react";

const Item = (props) => {
  return (
    <div>
      <h1>Item</h1>
      <p>{`${JSON.stringify(props.department.items)}`}</p>
      <a href={`/departments/${department.id}/items`}>back to items</a>
    </div>
  );
};

export default Item;