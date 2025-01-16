import React, { createContext, useState, useContext, useEffect } from "react";

export const AuthContext = createContext();

// Custom hook to use AuthContext
export const useAuth = () => {
  return useContext(AuthContext); 
};

const AuthProvider = ({ children }) => {
  const [user, setUser] = useState(null); 

  // Simulate fetching the user's session on app load
  useEffect(() => {
    const loggedUser = localStorage.getItem("user");
    if (loggedUser) {
      setUser(JSON.parse(loggedUser));
    }
  }, []);

  // Login function
  const login = (userData) => {
    setUser(userData);
    localStorage.setItem("user", JSON.stringify(userData)); // Save session
  };

  // Logout function
  const logout = () => {
    setUser(null);
    localStorage.removeItem("user"); // Clear session
  };

  return (
    <AuthContext.Provider value={{ user, login, logout }}>
      {children}
    </AuthContext.Provider>
  );
};

export default AuthProvider;
