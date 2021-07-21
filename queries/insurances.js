// SQL Query to get all Insurances
exports.GetInsurancesQuery = async () => {
  //should call the generaic method/function to create SQL queries dynamically here
  //Returning Queries from here
  return `SELECT i.insurance_id, p.policy_id, c.customer_id, c.name, c.email, to_char(i.purchase_date, 'DD/MM/YYYY') as purchase_date,
  to_char(i.expiry_date, 'DD/MM/YYYY') as expiry_date
  FROM public.insurances i 
  INNER JOIN public.customers c ON i.customer_id = c.customer_id
  INNER JOIN public.policies p ON i.policy_id = p.policy_id
  ORDER BY c.customer_id;`
};