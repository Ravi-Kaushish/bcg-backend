const { ExecuteQuery } = require('../utils/sequelize');

// Getting All Insurances
exports.GetInsurancesFromDB = async () => {
  // Data is an object that hold data required to execute sql query, like condition data, fields to insert in case of insert and update queries

  // We should call the generaic method/function to create SQL queries dynamically here

  // Taking the Raw sample query to return all insurances
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

//Getting Details of a particular Insurance from the database
exports.GetInsuranceDetailsFromDB = async (insurance_id) => {
  //taking the sample query to return all insurances

  //Raw Queries are prone to sql injection, We should use parametrized queries instead
  let query = `SELECT *, g.name as gender, r.name as region, to_char(i.purchase_date, 'DD/MM/YYYY') as purchase_date,
  to_char(i.expiry_date, 'DD/MM/YYYY') as expiry_date
  FROM public.insurances i 
  INNER JOIN public.customers c ON i.customer_id = c.customer_id
  INNER JOIN public.policies p ON i.policy_id = p.policy_id
  INNER JOIN public.regions r ON r.id = c.region_id
  INNER JOIN public.genders g ON c.gender_code = g.code
  INNER JOIN public.income_groups ig ON ig.id = c.income_group_id
  INNER JOIN public.vehicle_segments vs ON vs.code = p.vehicle_segment_code
  WHERE i.insurance_id='${insurance_id}'
  ORDER BY c.customer_id;`

  //Executing Query and returning results
  let [insurance, metadata] = await ExecuteQuery(query);
  return insurance[0];
};

//Update A insurance Policy details
exports.UpdateInsurancePolicy = async (data) => {
  //We should add additional checks to map the policy with Insurance Id
  let query = `UPDATE public.policies p 
  SET
  premium = ${data.premium},
  body_injury_liability=${data.body_injury_liability},
  personal_injury_protection=${data.personal_injury_protection},
  property_damage_liability=${data.property_damage_liability},
  collision=${data.collision},
  comprehensive=${data.comprehensive}
  WHERE p.policy_id=${data.policy_id};`
  let [insurance, metadata] = await ExecuteQuery(query);
  return metadata.rowCount;
}

// Deleting An insurance
exports.DeleteInsuranceFromDB = async (insurance_id) => {
  let query = `DELETE FROM public.insurances WHERE insurance_id='${insurance_id}';`

  let [insurances, metadata] = await ExecuteQuery(query);
  return metadata;
};