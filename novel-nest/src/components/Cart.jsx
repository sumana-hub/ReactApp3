import React, { useState, useEffect } from 'react';

const sampleCartItems = [
  {
    id: 1,
    title: "The Great Gatsby",
    author: "F. Scott Fitzgerald",
    price: 10.99,
    quantity: 2,
  }
];

const Cart = () => {
  const [cartItems, setCartItems] = useState(sampleCartItems);
  const calculateTotal = () => {
    return cartItems.reduce((total, item) => total + item.price * item.quantity, 0).toFixed(2);
  };
  const removeItem = (itemId) => {
    setCartItems(cartItems.filter(item => item.id !== itemId));
  };

  return (
    <div className="container mt-5">
      <h2>Your Cart</h2>
      <div className="list-group">
        {cartItems.length === 0 ? (
          <p>Your cart is empty.</p>
        ) : (
          cartItems.map(item => (
            <div key={item.id} className="list-group-item d-flex justify-content-between align-items-center">
              <div>
                <h5>{item.title}</h5>
                <p>By {item.author}</p>
                <p>Price: ${item.price.toFixed(2)}</p>
                <p>Quantity: {item.quantity}</p>
              </div>
              <button className="btn btn-danger" onClick={() => removeItem(item.id)}>Remove</button>
            </div>
          ))
        )}
      </div>

      <div className="mt-4">
        <h4>Total: ${calculateTotal()}</h4>
        <button className="btn btn-success mt-2">Proceed to Checkout</button>
      </div>
    </div>
  );
};

export default Cart;
