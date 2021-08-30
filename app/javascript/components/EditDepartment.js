import React from "react";

const EditDepartment = (props) => {
  return (
    <div>
      <h1>Form</h1>
      <form action={`/departments/${props.department.id}`} method="post">
        <input type="hidden" name="_method" value="patch" />
        <p>Name</p>
        <input defaultValue={props.department.name} name="department[name]" />
        <button type="submit">update</button>
      </form>
      <a href="/">back</a>
    </div>
  );
};

export default EditDepartment;