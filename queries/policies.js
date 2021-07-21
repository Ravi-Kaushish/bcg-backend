// SQL Query to get all Policies
exports.GetPoliciesQuery = async () => {
  //should call the generaic method/function to create SQL queries dynamically here
  //Returning Queries from here
  return `SELECT * FROM public.insurances i
  INNER JOIN public.customers c ON i.insurance_id = c.customer_id 
  INNER JOIN public.policies p ON i.policy_id = p.policy_id
  ORDER BY c.customer_id;`
};