import React from "react";
export default (props) => {
  const { departments } = props;
  return (
    <>
      <h1>Departments</h1>
      <a href="http://localhost:3000/departments/new">add department</a>
      {departments.map((department) => (
        <div>
          <h3>{department.name}</h3>
          <a href={`http://localhost:3000/departments/${department.id}`}>show department detail</a><br></br>
          <a href={`http://localhost:3000/departments/${department.id}/items`}>show items</a><br></br>
          <a href={`http://localhost:3000/departments/${department.id}/edit`}>edit</a><br></br>
          <a href={`http://localhost:3000/departments/${department.id}`} data-method="delete">delete</a>
        </div>
      ))}
      </>
  );
     
}