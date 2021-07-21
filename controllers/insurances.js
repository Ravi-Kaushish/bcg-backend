const { ExecuteQuery } = require('../utils/database');
const { GetInsurancesQuery } = require('../queries/insurances');

//Get all Insurances Handler
exports.GetInsurances = async (req, res) => {
  let [insurances, metadata] = await ExecuteQuery(await GetInsurancesQuery());
  res.send(insurances);
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