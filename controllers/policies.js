const { ExecuteQuery } = require('../utils/database');

//Get all Policies Handler
exports.GetPolicies = async (req, res) => {
  // let results = await ExecuteQuery('Sql Query');
  res.send("Policies Data");
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