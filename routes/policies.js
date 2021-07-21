const express = require("express");
const router = express.Router();

//Importing Middleware
const { Authorization } = require('../middlewares/auth')

//Importing Handlers
const { GetPolicies, CreatePolicy, GetPolicyById, UpdatePolicy, DeletePolicy } = require("../controllers/policies");

//Defining Routes
router.get("/", Authorization, GetPolicies);
router.post("/", Authorization, CreatePolicy);
router.get("/:policy_id", GetPolicyById);
router.put("/:policy_id", UpdatePolicy);
router.patch("/:policy_id", UpdatePolicy);
router.delete("/:policy_id", DeletePolicy);

module.exports = router;