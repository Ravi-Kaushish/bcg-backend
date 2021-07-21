const { GetPoliciesFromDB } = require('../dblayer/policies');

//Get all Policies Handler
exports.GetPolicies = async (req, res) => {
  // Handle Data Validation here

  // Calling the DB layer
  res.send(await GetPoliciesFromDB(req.params));
};

// Create a Policy Handler
exports.CreatePolicy = async (req, res) => {
  res.send("Polciy Created");
};

// Get a Policy by Id Handler
exports.GetPolicyById = async (req, res) => {
  res.send("Policy Details");
};

// Update a Policy using Id Handler
exports.UpdatePolicy = async (req, res) => {
  res.send("Policy Updated");
};

// Delete a Policy using Id Handler
exports.DeletePolicy = async (req, res) => {
  res.send("Policy Deleted");
};