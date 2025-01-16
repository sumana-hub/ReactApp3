import React, { useState, useEffect, useContext } from "react";
import { Link } from "react-router-dom";
import axios from "axios";
import { useCart } from "../components/CartContext";

const BookList = () => {
  const { addToCart } = useCart();
  const [books, setBooks] = useState([]);
  const [currentPage, setCurrentPage] = useState(1);
  const [totalPages, setTotalPages] = useState(1);

  useEffect(() => {
    fetchBooks(currentPage);
  }, [currentPage]);

  const fetchBooks = async (page) => {
    const res = await axios.get(`http://localhost/bookstore_server/api/fetch_books.php?page=${page}`);
    setBooks(res.data.books);
    setTotalPages(res.data.totalPages);
  };

  const handleAddToCart = (book) => {
    addToCart(book); 
  };

  return (
    <div className="container pt-5">
      <h3 className="my-4 text-center booklist-title">Available Books</h3>
      <div className="row justify-content-center">
        {books.map((book) => (
          <div key={book.id} className="col-md-4 mb-4">
            <div className="card shadow-sm border-light rounded card-custom">
              <div className="card-body text-center">
                <h5 className="card-title book-title">{book.title}</h5>
                <h6 className="card-subtitle mb-2 text-muted">By {book.author}</h6>
                <p className="card-text book-price">${book.price}</p>
                <p className="card-text text-muted">Category: {book.category}</p>
                <div className="d-flex justify-content-center">
                  <Link to={`/book-details/${book.id}`} className="btn btn-readmore me-2">Read More</Link>
                  <button className="btn btn-buynow" onClick={() => handleAddToCart(book)}>
                    Add To Cart
                  </button>
                </div>
              </div>
            </div>
          </div>
        ))}
      </div>
      <div className="d-flex justify-content-center mt-4">
        <button
          className="btn btn-prev me-2"
          disabled={currentPage === 1}
          onClick={() => setCurrentPage(currentPage - 1)}
        >
          Previous
        </button>
        <span className="align-self-center page-info">Page {currentPage} of {totalPages}</span>
        <button
          className="btn btn-next ms-2"
          disabled={currentPage === totalPages}
          onClick={() => setCurrentPage(currentPage + 1)}
        >
          Next
        </button>
      </div>
    </div>
  );
};

export default BookList;