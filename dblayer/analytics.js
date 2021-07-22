const { ExecuteQuery } = require('../utils/sequelize');

// SQL Query to get all Insurances
exports.GetAnalyticsDataFromDB = async (data) => {
  //Data is an object that hold data required to execute sql query, like condition data, fields to insert in case of insert and update queries

  //should call the generaic method/function to create SQL queries dynamically here

  //taking the sample query to return all insurances
  let query = `SELECT insurance_id, policy_id, purchase_date, expiry_date, r.name as region
  FROM public.insurances i 
  INNER JOIN public.customers c ON i.customer_id = c.customer_id
  INNER JOIN public.regions r ON c.region_id = r.id
  ${data.region !== "all" ? ` WHERE LOWER(r.name)='${data.region}' `: " "} ORDER BY purchase_date, r.name;`
  
  //Executing Query and returning results, can pass the binds optionally
  let [insurances, metadata] = await ExecuteQuery(query, {region: data.region});
  return insurances;
};