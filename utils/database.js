const Sequelize = require('sequelize');
const { GetDbConfig } = require('../config/config');

//Resposible for creating a connection to the data base
exports.GetDbConnection = async () => {
  let db = await GetDbConfig();
  try {
    return await new Sequelize(db.url, {
      dialect: db.provider,
      ssl: db.ssl,
      dialectOptions: {
        ssl: {
          require: db.ssl,
          //Setting this off to connect to a sample postgres db i got from heroku
          rejectUnauthorized: false
        }
      },
      logging: false
    });
  }
  catch (error) {
    console.log("error Connecting to the database");
    return error;
  }
};

// Responsible for executing a query with the databindings
exports.ExecuteQuery = async (query, binds = {}) => {
  let connection = await this.GetDbConnection();
  return await connection.query(query, {
    //Passing the values as parameters(binds) to avoid sql injections
    binds
  });
};