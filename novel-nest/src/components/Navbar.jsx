import React, { useContext } from "react";
import { Link } from "react-router-dom";
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faShoppingCart } from '@fortawesome/free-solid-svg-icons';
import { AuthContext } from "../components/AuthContext";
import { useCart } from "../components/CartContext";  

const Navbar = () => {
  const { user, logout } = useContext(AuthContext);
  const { cart } = useCart();  

  const totalItems = cart.reduce((total, item) => total + item.quantity, 0);

  return (
    <nav className="navbar navbar-expand-lg">
      <div className="container-fluid">
        <Link className="navbar-brand" to="/">Novel Nest</Link>
        <div className="collapse navbar-collapse">
          <ul className="navbar-nav ms-auto">
            <li className="nav-item">
              <Link className="nav-link" to="/">
                Home
              </Link>
            </li>
            <li className="nav-item">
              <Link className="nav-link" to="/add-book">
                Add Book
              </Link>
            </li>
            {user ? (
              <>
                <li className="nav-item">
                  <span className="nav-link">Welcome, {user.username}</span>
                </li>
                <li className="nav-item">
                  <button className="btn btn-link nav-link" onClick={logout}>
                    Logout
                  </button>
                </li>
              </>
            ) : (
              <>
                <li className="nav-item">
                  <Link className="nav-link" to="/login">Login</Link>
                </li>
                <li className="nav-item">
                  <Link className="nav-link" to="/register">Register</Link>
                </li>
              </>
            )}
            <li className="nav-item">
              <Link className="nav-link cart-icon" to="/cart">
                <FontAwesomeIcon icon={faShoppingCart} className="cart-icon__icon" />
                <span className="badge rounded-pill cart-icon__badge">{totalItems}</span>
              </Link>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  );
};

export default Navbar;
