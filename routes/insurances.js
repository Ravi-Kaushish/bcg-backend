const express = require("express");
const router = express.Router();

//Importing Handlers
const { GetInsurances, CreateInsurance, GetInsuranceById, UpdateInsurance, DeleteInsurance } = require("../controllers/insurances");

//Defining Routes
router.get("/", GetInsurances);
router.post("/", CreateInsurance);
router.get("/:insurance_id", GetInsuranceById);
router.put("/:insurance_id", UpdateInsurance);
router.patch("/:insurance_id", UpdateInsurance);
router.delete("/:insurance_id", DeleteInsurance);

module.exports = router;