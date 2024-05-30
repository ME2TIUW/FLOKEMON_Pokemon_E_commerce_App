const express = require("express");
const { login, logout, register } = require("./userController");
const verifyToken = require("./auth.middleware");
const router = express.Router();
router.post("/login", login);
router.post("/register", register);

router.post("/logout", verifyToken, logout);
module.exports = router;
