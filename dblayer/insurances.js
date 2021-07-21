const { ExecuteQuery } = require('../utils/sequelize');

// SQL Query to get all Insurances
exports.GetInsurancesFromDB = async (data) => {
  //Data is an object that hold data required to execute sql query, like condition data, fields to insert in case of insert and update queries

  //should call the generaic method/function to create SQL queries dynamically here

  //taking the sample query to return all insurances
  let query = `SELECT i.insurance_id, p.policy_id, c.customer_id, c.name, c.email, to_char(i.purchase_date, 'DD/MM/YYYY') as purchase_date,
  to_char(i.expiry_date, 'DD/MM/YYYY') as expiry_date
  FROM public.insurances i 
  INNER JOIN public.customers c ON i.customer_id = c.customer_id
  INNER JOIN public.policies p ON i.policy_id = p.policy_id
  ORDER BY c.customer_id;`

  //Executing Query and returning results
  let [insurances, metadata] = await ExecuteQuery(query);
  return insurances;
};