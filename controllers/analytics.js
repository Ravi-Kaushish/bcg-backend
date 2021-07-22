const { GetAnalyticsDataFromDB } = require('../dblayer/analytics');

//Get all Policies Handler
exports.GetInsuranceAnalytics = async (req, res) => {
  // Handle Data Validation here

  //Can do the server side tranformation here if needed

  //Flexibilty to allow user query data based on regions
  let region = req.query.region && req.query.region.toLowerCase() || "all"
  // Calling the DB layer
  res.send(await GetAnalyticsDataFromDB({region}));
};