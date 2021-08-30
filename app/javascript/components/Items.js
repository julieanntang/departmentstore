import React from 'react'

export default (props) =>  {

    const { items, department } = props;
    return (
      <>
        <h1>Items Page from {department.name} department</h1>
        <a href={`/department/${department.id}`}>back to department detail</a><br></br>
        <a href={`/`}>back to departments</a><br></br>
        <a href={`/departments/${department.id}/items/new`}>new item</a>
        {items.map((item) => (
          <div key={item.id} className="item-card">
            <h3>{item.name}</h3>
            <a href={`/departments/${department.id}/items/${item.id}`}>show item</a><br></br>
            <a href={`/departments/${department.id}/items/${item.id}/edit`}>edit item</a><br></br>
            <a href={`/departments/${department.id}/items/${item.id}`} data-method="delete">delete item</a>
          </div>
        ))}
      </>
    );

}