const mysql = require("mysql");
const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  database: "flokemon_Login",
});
db.connect((err) => {
  if (err) {
    console.error("Error connecting to database:", err);
    return;
  }
  console.log("Connected to MySQL database Successfully!");
});
module.exports = db;
