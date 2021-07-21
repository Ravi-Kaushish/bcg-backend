require('dotenv').config();

//Takes Responsibility of Pointing to the correct Database in Different Environments
exports.GetDbConfig = async () => {
  return {
    url: process.env.DATABASE_URL,
    provider: "postgres",
    ssl: true,
    rejectUnauthorized: true
  }
};

//Setting CORS Policy
exports.CORS = (req, res, next) => {
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Access-Control-Allow-Credentials", "true");
    res.setHeader("Access-Control-Allow-Methods", "GET,POST,PUT,DELETE,HEAD,OPTIONS");
    res.setHeader("Access-Control-Allow-Headers", "Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Authorization,Access-Control-Request-Method, Access-Control-Request-Headers,Access-Control-Allow-Origin");
    next();
};