const express = require("express");
const router = express.Router();

//Importing Middleware
const { Authorization } = require('../middlewares/auth')

//Importing Handlers
const { GetPolicies, CreatePolicy, GetPolicyById, UpdatePolicy, DeletePolicy } = require("../controllers/policies");

//Defining Routes
router.get("/", Authorization, GetPolicies);
router.post("/", Authorization, CreatePolicy);
router.get("/:policy_id", Authorization, GetPolicyById);
router.put("/:policy_id", Authorization, UpdatePolicy);
router.patch("/:policy_id", Authorization, UpdatePolicy);
router.delete("/:policy_id", Authorization, DeletePolicy);

module.exports = router;