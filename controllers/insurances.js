const { GetInsurancesFromDB } = require('../dblayer/insurances');

// Get all Insurances Handler
exports.GetInsurances = async (req, res) => {
  // Handle Data Validation here

  // Calling the DB layer
  res.send(await GetInsurancesFromDB(req.params));
};

// Create a Insurance Handler
exports.CreateInsurance = async (req, res) => {
  res.send("Insurance Created");
};

// Get a Insurance by Id Handler
exports.GetInsuranceById = async (req, res) => {
  res.send("Insurance details");
};

// Update a Insurance using Id Handler
exports.UpdateInsurance = async (req, res) => {
  res.send("Insurance Updated");
};

// Delete a Insurance using Id Handler
exports.DeleteInsurance = async (req, res) => {
  res.send("Insurance Deleted");
};