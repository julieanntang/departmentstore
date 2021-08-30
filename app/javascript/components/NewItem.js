import React from "react";

const NewItem = (props) => {
  const {department} = props;
  return (
    <div>
      <h1>New Item</h1>
      <form action={`/departments/${department.id}/items`} method="post">
        <p>Name</p>
        <input name="item[name]" />
        <button type="submit">add</button>
      </form>
      <a href="/">back</a>
    </div>
  );
};

export default NewItem;