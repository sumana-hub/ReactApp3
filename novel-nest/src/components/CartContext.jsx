import React, { createContext, useState, useContext } from "react";
import axios from "axios";
import { useAuth } from "../components/AuthContext"; 

const CartContext = createContext();

export const useCart = () => {
  return useContext(CartContext);
};

export const CartProvider = ({ children }) => {
  const { user } = useAuth(); 
  const [cart, setCart] = useState([]);
  const [loading, setLoading] = useState(false);

  const addToCart = async (book) => {
    setLoading(true); 
    try {
      if (user) {
        const user_id = user.id; // Get user_id from AuthContext
        const response = await axios.post("http://localhost/bookstore_server/api/add_to_cart.php", {
          user_id,
          book_id: book.id,
          quantity: 1,
        });
  
        if (response.data.success) {
          setCart((prevCart) => {
            const existingItem = prevCart.find((item) => item.id === book.id);
            if (existingItem) {
              return prevCart.map((item) =>
                item.id === book.id
                  ? { ...item, quantity: item.quantity + 1 }
                  : item
              );
            }
            return [...prevCart, { ...book, quantity: 1 }];
          });
          console.log('Updated Cart:', cart); 
        } else {
          console.error('Failed to add book to cart');
        }
      } else {
        console.log("User is not logged in.");
      }
    } catch (error) {
      console.error('Error adding book to cart:', error);
    } finally {
      setLoading(false); 
    }
  };

  // Remove item from cart
  const removeFromCart = (bookId) => {
    setCart((prevCart) => prevCart.filter((item) => item.id !== bookId));
  };

  // Calculate total
  const calculateTotal = () => {
    return cart.reduce((total, item) => total + item.price * item.quantity, 0).toFixed(2);
  };

  return (
    <CartContext.Provider value={{ cart, addToCart, removeFromCart, calculateTotal }}>
      {children}
    </CartContext.Provider>
  );
};
