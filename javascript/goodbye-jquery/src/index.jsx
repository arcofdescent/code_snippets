
import React from 'react';
import ReactDOM from 'react-dom';
import Order from './components/Order.jsx';

let orders_json = {
    id: 1278
};

ReactDOM.render(
    <div>
      <h1>Hello from React, auto reload working?</h1>
      <Order details={orders_json} />
    </div>,
    document.getElementById('root')
);



