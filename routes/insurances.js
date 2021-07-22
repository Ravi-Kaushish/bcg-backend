const express = require("express");
const router = express.Router();

//Importing Middleware
const { Authorization } = require('../middlewares/auth')

//Importing Handlers
const { GetInsurances, CreateInsurance, GetInsuranceById, UpdateInsurance, DeleteInsurance } = require("../controllers/insurances");

//Defining Routes
router.get("/", Authorization, GetInsurances);
router.post("/", Authorization, CreateInsurance);
router.get("/:insurance_id", Authorization, GetInsuranceById);
router.put("/:insurance_id", Authorization, UpdateInsurance);
router.patch("/:insurance_id", Authorization, UpdateInsurance);
router.delete("/:insurance_id", Authorization, DeleteInsurance);

module.exports = router;