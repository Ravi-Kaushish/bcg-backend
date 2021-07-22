const { GetInsurancesFromDB, GetInsuranceDetailsFromDB, UpdateInsuranceDataById, DeleteInsuranceFromDB } = require('../dblayer/insurances');
const { UpdatePolicyById } = require('../dblayer/policies');

// Get all Insurances Handler
exports.GetInsurances = async (req, res) => {
  // Handle Data Validation on Controller level here

  // Calling the DB layer
  res.send(await GetInsurancesFromDB());
};


// Create a Insurance Handler
exports.CreateInsurance = async (req, res) => {
  // Handle Data Validation on Controller level here

  res.send("Insurance Created");
};


// Get a Insurance by Id Handler
exports.GetInsuranceById = async (req, res) => {
  // Handle Data Validation on Controller level here

  if (!req.params.insurance_id) {
    res.statusCode = 400;
    res.send("Insurance Id is required to retrieve its details");
  } else {
    // Calling the DB layer after validations
    res.send(await GetInsuranceDetailsFromDB(req.params.insurance_id));
  }
};


// Update a Insurance using Id Handler
exports.UpdateInsurance = async (req, res) => {
  // Handle Data Validation on Controller level here

  if (!req.params.insurance_id) {
    res.statusCode = 400;
    res.send("Insurance Id is required to update an insurance");
  } else {
    let data = {
      insurance_id: req.params.insurance_id,
      policy_id: req.body.policy_id,
      premium: req.body.premium,
      body_injury_liability: req.body.body_injury_liability || false,
      personal_injury_protection: req.body.personal_injury_protection || false,
      property_damage_liability: req.body.property_damage_liability || false,
      collision: req.body.collision || false,
      comprehensive: req.body.comprehensive || false
    }

    if (data.premium > 1000000) {
      res.statusCode = 400;
      res.send("Premium can't be more than 1 Million in amount");
    } else if (!data.premium || !(/^\d+$/.test(data.premium))) {
      res.statusCode = 400;
      res.send("Invalid premium amount, premium amout should be between 1 and 1000000");
    } else {
      // If we Need to change anything in Insurance Table, we will call the Insurance DB Layer
      // let insurance = await UpdateInsuranceDataById(data);


      //We are updating the policy related for an insurance, so we will call the Policy DB Layer from here
      let policyUpdate = await UpdatePolicyById(data);
      res.send(policyUpdate ? "Insurance Policy Updated" : "Failed to update Insurance Policy, please try again");
    }
  }
};


// Delete a Insurance using Id Handler
exports.DeleteInsurance = async (req, res) => {
  // Handle Data Validation on Controller level here

  if (!req.params.insurance_id) {
    res.statusCode = 400;
    res.send("Insurance Id is required to delete an insurance");
  } else {
    // Add the additional logic and call the DB layer from here
    res.send(await DeleteInsuranceFromDB(req.params.insurance_id));
  }
};