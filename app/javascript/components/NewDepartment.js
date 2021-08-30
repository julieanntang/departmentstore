import React from "react";

const NewDepartment = () => {
  return (
    <div>
      <h1>Form</h1>
      <form action="/departments" method="post">
        <p>Name</p>
        <input name="department[name]" />
        <button type="submit">add</button>
      </form>
      <a href="/">back</a>
    </div>
  );
};

export default NewDepartment;