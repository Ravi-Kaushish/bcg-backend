const express = require("express");
const router = express.Router();

//Importing Middleware
const { Authorization } = require('../middlewares/auth')

//Importing Handlers
const { GetCustomers, CreateCustomer, GetCustomerById, UpdateCustomer, DeleteCustomer } = require("../controllers/customers");

//Defining Routes
router.get("/", Authorization, GetCustomers);
router.post("/", Authorization, CreateCustomer);
router.get("/:customer_id", Authorization, GetCustomerById);
router.put("/:customer_id", Authorization, UpdateCustomer);
router.patch("/:customer_id", Authorization, UpdateCustomer);
router.delete("/:customer_id", Authorization, DeleteCustomer);

module.exports = router;