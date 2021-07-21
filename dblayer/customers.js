const { ExecuteQuery } = require('../utils/sequelize');

// SQL Query to get all Policies
exports.GetCustomersFromDB = async (data) => {
  //Data is an object that hold data required to execute sql query, like condition data, fields to insert in case of insert and update queries

  //should call the generaic method/function to create SQL queries dynamically here

  //taking the sample query to return all customers
  let query = `SELECT
  customer_id,  c.name,  email,  phone,  g.code as gender,  marital_status,  r.name as region,  i.income_range as income
  FROM public.customers c
  INNER JOIN public.genders g ON c.gender_code = g.code 
  INNER JOIN public.regions r ON c.region_id = r.id
  INNER JOIN public.income_groups i ON i.id = c.income_group_id
  ORDER BY customer_id;`

  //Executing Query and returning results
  let [customers, metadata] = await ExecuteQuery(query);
  return customers;
};