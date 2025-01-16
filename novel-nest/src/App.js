import React from 'react';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import './index.css';
import Navbar from "./components/Navbar";
import BookList from "./components/BookList";
import AddBook from "./components/AddBook";
import Cart from "./components/Cart";
import BookDetails from "./components/BookDetails";
import AuthProvider from "./components/AuthContext";
import Login from "./components/Login";
import Register from "./components/Register";
import { CartProvider } from "./components/CartContext";

function App() {
  return (
      <AuthProvider>
        <CartProvider>
        <div className="App">
          <BrowserRouter>
            <Navbar />
            <Routes>
              <Route path="/" element={<BookList />} />
              <Route path="/add-book" element={<AddBook />} />
              <Route path="/cart" element={<Cart />} />
              <Route path="/book-details/:id" element={<BookDetails />} />
              <Route path="/login" element={<Login />} />
              <Route path="/register" element={<Register />} />
            </Routes>
          </BrowserRouter>
        </div>
        </CartProvider>
      </AuthProvider>
  );
}

export default App;
