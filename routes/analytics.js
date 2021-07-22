const express = require("express");
const router = express.Router();

//Importing Middleware
const { Authorization } = require('../middlewares/auth')

//Importing Handlers
const { GetInsuranceAnalytics} = require("../controllers/analytics");

//Defining Routes
router.get("/", Authorization, GetInsuranceAnalytics);

module.exports = router;