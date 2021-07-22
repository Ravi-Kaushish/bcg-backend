const { ExecuteQuery } = require('../utils/sequelize');

// SQL Query to get all Insurances
exports.GetInsurancesFromDB = async (data) => {
  //Data is an object that hold data required to execute sql query, like condition data, fields to insert in case of insert and update queries

  //should call the generaic method/function to create SQL queries dynamically here

  //taking the sample query to return all insurances
  let query = `SELECT insurance_id, policy_id, purchase_date, expiry_date FROM public.insurances ORDER BY purchase_date;`

  //Executing Query and returning results
  let [insurances, metadata] = await ExecuteQuery(query);
  return insurances;
};