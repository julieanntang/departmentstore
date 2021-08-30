import React from "react";

const EditItem = (props) => {
  const {department, item} = props;
  return (
    <div>
      <h1>Edit Item</h1>
      <form action={`/departments/${department.id}/items/${item.id}`} method="post">
        <input type="hidden" name="_method" value="patch" />
        <p>Name</p>
        <input defaultValue={item.name} name="item[name]" />
        <button type="submit">update</button>
      </form>
    </div>
  );
};

export default EditItem;