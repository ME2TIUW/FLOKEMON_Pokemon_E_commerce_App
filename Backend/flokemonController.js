const db = require("./db");

// Get all flokemon
const getAllFlokemon = (req, res) => {
  db.query("SELECT * FROM flokemon", (err, result) => {
    if (err) {
      res.status(500).json({ message: "Internal Server Error" });
    } else {
      res.status(200).json(result);
    }
  });
};

// Get flokemon by ID
const getFlokemonById = (req, res) => {
  const flokemonId = req.params.id;
  db.query(
    "SELECT * FROM flokemon WHERE flokemonid = ?",
    [flokemonId],
    (err, result) => {
      if (err) {
        res.status(500).json({ message: "Internal Server Error" });
      } else {
        if (result.length === 0) {
          res.status(404).json({ message: "Flokemon not found" });
        } else {
          res.status(200).json(result[0]);
        }
      }
    }
  );
};

// Add new flokemon
const addFlokemon = (req, res) => {
  const { name, description, imagePath, price } = req.body;
  console.log(req.body);

  if (req.user && req.user.role === "admin") {
    db.query(
      "INSERT INTO flokemon (name, description, imagePath, price) VALUES (?, ?, ?, ?)",
      [name, description, imagePath, price],
      (err, result) => {
        if (err) {
          res.status(500).json({ message: "Internal Server Error" });
        } else {
          res.status(201).json({ message: "Flokemon added successfully" });
        }
      }
    );
  } else {
    res.status(403).json({ message: "Forbidden: Insufficient Privileges" });
  }
};

// Update flokemon by ID
const updateFlokemon = (req, res) => {
  const flokemonId = req.params.id;
  const { name, description, imagePath, price } = req.body;
  if (req.user && req.user.role === "admin") {
    db.query(
      "UPDATE flokemon SET name = ?, description = ?, imagePath = ?, price = ? WHERE flokemonid = ?",
      [name, description, imagePath, price, flokemonId],
      (err, result) => {
        if (err) {
          res.status(500).json({ message: "Internal Server Error" });
        } else {
          res.status(200).json({ message: "Flokemon updated successfully" });
        }
      }
    );
  } else {
    res.status(403).json({ message: "Forbidden: Insufficient Privileges" });
  }
};

// Delete flokemon by ID
const deleteFlokemon = (req, res) => {
  const flokemonId = req.params.id;
  if (req.user && req.user.role === "admin") {
    db.query(
      "DELETE FROM flokemon WHERE flokemonid = ?",
      [flokemonId],
      (err, result) => {
        if (err) {
          res.status(500).json({ message: "Internal Server Error" });
        } else {
          res.status(200).json({ message: "Flokemon deleted successfully" });
        }
      }
    );
  } else {
    res.status(403).json({ message: "Forbidden: Insufficient Privileges" });
  }
};

module.exports = {
  getAllFlokemon,
  getFlokemonById,
  addFlokemon,
  updateFlokemon,
  deleteFlokemon,
};
