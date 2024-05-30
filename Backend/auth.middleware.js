// authMiddleware.js
const db = require("./db");

const verifyToken = (req, res, next) => {
  const authorizationHeader = req.headers.authorization;

  if (!authorizationHeader || !authorizationHeader.startsWith("Bearer ")) {
    return res
      .status(401)
      .json({ message: "User Unauthorized: Missing token" });
  }

  const token = authorizationHeader.split(" ")[1];
  // Check the token against the database
  db.query("SELECT * FROM user WHERE token = ?", [token], (err, result) => {
    if (err) {
      return res.status(500).json({ message: "Internal Server Error" });
    }

    if (result.length === 0) {
      return res.status(401).json({ message: "Unauthorized: Invalid token" });
    }

    const user = result[0];

    // Token is valid, attach user details to the request for further processing if needed
    req.user = user;
    next();
  });
};

module.exports = verifyToken;
