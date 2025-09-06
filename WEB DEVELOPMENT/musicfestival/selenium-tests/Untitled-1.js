
const express = require("express");
const router = express.Router();
const UserController = require("../Controllers/UserController");
const { validateUser, validateLogin } = require("../middleware/validation");
const { authenticateToken, authorizeUser, requireAdmin } = require("../middleware/auth");


router.post("/", validateUser, UserController.addUsers);          
router.post("/login", validateLogin, UserController.loginUser);   


router.get("/", authenticateToken, requireAdmin, UserController.getAllUsers);        
router.get("/:id", authenticateToken, authorizeUser, UserController.getById);      
router.put("/:id", authenticateToken, authorizeUser, UserController.updateUser);     
router.delete("/:id", authenticateToken, authorizeUser, UserController.deleteUser);  

router.post("/checkout", authenticateToken, UserController.addBoughtShows);

module.exports = router;