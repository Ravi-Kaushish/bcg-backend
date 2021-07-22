const { ExecuteQuery } = require('../utils/sequelize');

// SQL Query to get all Policies
exports.GetPoliciesFromDB = async (data) => {
  //Data is an object that hold data required to execute sql query, like condition data, fields to insert in case of insert and update queries

  //should call the generaic method/function to create SQL queries dynamically here

  //taking the sample query to return all policies
  let query = `SELECT policy_id,
  body_injury_liability as injury_cover,
  personal_injury_protection as personal_cover,
  property_damage_liability as property_damage_cover,
  collision as accidental_cover,
  comprehensive as comprehensive_cover,
  vehicle_segment_code as vehicle_type,
  premium
  FROM public.policies
  ORDER BY policy_id;`

  //Executing Query and returning results
  let [policies, metadata] = await ExecuteQuery(query);
  return policies;
};

exports.UpdatePolicyById = async (data) => {
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

  //Executing Update Query to update policy specs
  let [insurance, metadata] = await ExecuteQuery(query);
  return metadata.rowCount;
}