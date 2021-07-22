const { GetAnalyticsDataFromDB } = require('../dblayer/analytics');

//Get all Policies Handler
exports.GetInsuranceAnalytics = async (req, res) => {
  // Handle Data Validation here

  //Can do the server side tranformation here if needed

  // Calling the DB layer
  res.send(await GetAnalyticsDataFromDB());
};