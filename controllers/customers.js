// Get all Customers Handler
exports.GetCustomers = async (req, res) => {
  res.send("customers data");
};

// Create a Customer Handler
exports.CreateCustomer = async (req, res) => {
  res.send("CUstomer Created");
};

//Get a Customer by Id Handler
exports.GetCustomerById = async (req, res) => {
  res.send("Customer Details");
};

//Update a Customer using Id Handler
exports.UpdateCustomer = async (req, res) => {
  res.send("Customer Updated");
};

//Delete a Customer using Id Handler
exports.DeleteCustomer = async (req, res) => {
  res.send("Customer Deleted");
};