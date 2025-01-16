import React, { useState, useEffect } from "react";
import { useParams } from "react-router-dom";
import axios from "axios";

const BookDetails = () => {
  const { id } = useParams(); 
  const [book, setBook] = useState(null); 
  const [loading, setLoading] = useState(true); 
  const [error, setError] = useState(null); 
  const [likeCount, setLikeCount] = useState(0); 
  const [dislikeCount, setDislikeCount] = useState(0); 

  useEffect(() => {
    const fetchBookDetails = async () => {
      try {
        const res = await axios.get(`http://localhost/bookstore_server/api/fetch_book_details.php?id=${id}`);
        if (res.data.success) {
          setBook(res.data.book);
          setLikeCount(res.data.book.like_count); 
          setDislikeCount(res.data.book.dislike_count); 
        } else {
          setError(res.data.message || "Book details not found.");
        }
      } catch (err) {
        setError("An error occurred while fetching book details.");
      } finally {
        setLoading(false);
      }
    };

    fetchBookDetails();
  }, [id]);

  // Handle Like button click
  const handleLike = async () => {
    try {
      await axios.post("http://localhost/bookstore_server/api/update_like_dislike.php", {
        id,
        action: "like",
      });
      setLikeCount(likeCount + 1); 
    } catch (error) {
      console.error("Error updating like count:", error);
    }
  };

  // Handle Dislike button click
  const handleDislike = async () => {
    try {
      await axios.post("http://localhost/bookstore_server/api/update_like_dislike.php", {
        id,
        action: "dislike",
      });
      setDislikeCount(dislikeCount + 1); 
    } catch (error) {
      console.error("Error updating dislike count:", error);
    }
  };

  if (loading) {
    return <div>Loading...</div>;
  }

  if (error) {
    return <div>Error: {error}</div>;
  }

  if (!book) {
    return <div>No book data available.</div>;
  }

  return (
    <div className="container pt-5">
      <h3 className="my-4 text-center">{book.title}</h3>
      <div className="text-center">
        <p><strong>Author:</strong> {book.author}</p>
        <p><strong>Price:</strong> ${book.price}</p>
        <p><strong>Category:</strong> {book.category}</p>
        <p><strong>Description:</strong> {book.description}</p>

        {/* Long description */}
        <h4>About the Book</h4>
        <p>{book.long_description}</p>

        {/* Like/Dislike buttons */}
        <div className="d-flex justify-content-center">
          <button className="btn btn-success me-2" onClick={handleLike}>
            Like ({likeCount})
          </button>
          <button className="btn btn-danger" onClick={handleDislike}>
            Dislike ({dislikeCount})
          </button>
        </div>
      </div>
    </div>
  );
};

export default BookDetails;
