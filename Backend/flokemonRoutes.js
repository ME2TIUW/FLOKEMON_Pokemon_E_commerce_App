const express = require("express");
const router = express.Router();
const flokemonController = require("./flokemonController");
const verifyToken = require("./auth.middleware");

router.use(verifyToken);

router.get("/", flokemonController.getAllFlokemon);
router.get("/:id", flokemonController.getFlokemonById);
router.post("/", flokemonController.addFlokemon);
router.put("/:id", flokemonController.updateFlokemon);
router.delete("/:id", flokemonController.deleteFlokemon);

module.exports = router;
