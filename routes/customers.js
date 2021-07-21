const express = require("express");
const router = express.Router();

//Importing Handlers
const { GetCustomers, CreateCustomer, GetCustomerById, UpdateCustomer, DeleteCustomer } = require("../controllers/customers");

//Defining Routes
router.get("/", GetCustomers);
router.post("/", CreateCustomer);
router.get("/:customer_id", GetCustomerById);
router.put("/:customer_id", UpdateCustomer);
router.patch("/:customer_id", UpdateCustomer);
router.delete("/:customer_id", DeleteCustomer);

module.exports = router;