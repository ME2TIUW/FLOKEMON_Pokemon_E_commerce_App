const express = require("express");
const session = require("express-session");
const app = express();
const verifyToken = require("./auth.middleware");
const crypto = require("crypto");
const secret = crypto.randomBytes(64).toString("hex");

app.use(
  session({
    secret: secret,
    resave: false,
    saveUninitialized: false,
  })
);

app.get("/", function (req, res) {
  res.send("Hello World");
});

const bodyParser = require("body-parser");
app.use(bodyParser.json());

const userRoutes = require("./userRoutes");
app.use(userRoutes);

const flokemonRoutes = require("./flokemonRoutes");
app.use("/flokemon", flokemonRoutes);

app.listen(8080);

module.exports = app;
