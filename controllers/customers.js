const { GetCustomersFromDB } = require('../dblayer/customers');

// Get all Customers Handler
exports.GetCustomers = async (req, res) => {
  // Handle Data Validation on Controller level here

  // Calling the DB layer
  res.send(await GetCustomersFromDB(req.params));
};

// Create a Customer Handler
exports.CreateCustomer = async (req, res) => {
  // Handle Data Validation on Controller level here

  // Add the additional logic and call the DB layer from here
  res.send("CUstomer Created");
};

//Get a Customer by Id Handler
exports.GetCustomerById = async (req, res) => {
  // Handle Data Validation on Controller level here

  if (!req.params.customer_id) {
    res.statusCode = 400;
    res.send("Customer Id is required to retrive its details");
  } else {
    // Add the additional logic and call the DB layer from here
    res.send("Customer Details");
  }
};

//Update a Customer using Id Handler
exports.UpdateCustomer = async (req, res) => {
  // Handle Data Validation on Controller level here

  if (!req.params.customer_id) {
    res.statusCode = 400;
    res.send("Customer Id is required to update a customer");
  } else {
    // Add the additional logic and call the DB layer from here
    res.send("Customer Updated");
  }
};

//Delete a Customer using Id Handler
exports.DeleteCustomer = async (req, res) => {
  // Handle Data Validation on Controller level here

  if (!req.params.customer_id) {
    res.statusCode = 400;
    res.send("Customer Id is required to delete a customer");
  } else {
    // Add the additional logic and call the DB layer from here
    res.send("Customer Deleted");
  }
};