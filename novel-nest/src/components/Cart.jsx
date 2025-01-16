import React, { useState, useEffect, useContext } from 'react';
import axios from 'axios'; 
import { useCart } from "../components/CartContext";

const Cart = () => {
  const { cart, removeFromCart, calculateTotal } = useCart(); 
  const [cartItems, setCartItems] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchCart = async () => {
      try {
        const user_id = 1; 
        const response = await axios.get(`http://localhost/bookstore_server/api/get_cart.php?user_id=${user_id}`);
        
        if (response.data.success && response.data.cart_items) {
          setCartItems(response.data.cart_items);  
        } else {
          console.error('Failed to fetch cart items or no items found.');
        }
      } catch (error) {
        console.error('Error fetching cart:', error);
      } finally {
        setLoading(false); 
      }
    };

    fetchCart();
  }, []);

  if (loading) {
    return <p>Loading...</p>;
  }

  const handleRemoveItem = async (itemId) => {
    try {
      const user_id = 1; 
      const response = await axios.post("http://localhost/bookstore_server/api/remove_from_cart.php", {
        user_id,
        book_id: itemId,
      });

      if (response.data.success) {
        removeFromCart(itemId); 
        setCartItems(cartItems.filter(item => item.id !== itemId)); // Update local state
      } else {
        console.error('Failed to remove item from cart.');
      }
    } catch (error) {
      console.error('Error removing item from cart:', error);
    }
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
                <p>Price: ${Number(item.price).toFixed(2)}</p> {/* Ensure price is a number */}
                <p>Quantity: {item.quantity}</p>
              </div>
              <button className="btn btn-danger" onClick={() => handleRemoveItem(item.id)}>
                Remove
              </button>
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
