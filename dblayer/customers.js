const { ExecuteQuery } = require('../utils/sequelize');

// SQL Query to get all Policies
exports.GetCustomersFromDB = async (data) => {
  //Data is an object that hold data required to execute sql query, like condition data, fields to insert in case of insert and update queries

  //should call the generaic method/function to create SQL queries dynamically here

  //taking the sample query to return all customers
  let query = `SELECT
  customer_id,  name,  email,  phone,  gender_code,   dob,  marital_status,  region_id,  income_group_id
  FROM public.customers
  ORDER BY customer_id;`

  //Executing Query and returning results
  let [customers, metadata] = await ExecuteQuery(query);
  return customers;
};