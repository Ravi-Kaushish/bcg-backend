const express = require('express');
const bodyParser = require('body-parser');
const { CORS } = require('./config/config.js');

//Initializing app
const app = express();

//Setting port to run app
const PORT = process.env.PORT || 8000;

//Using bodyparser middleware
app.use(bodyParser.json());

//Enabling Cors for Cross Origin calls
app.use(CORS);

//test route
app.get("/", (req, res) => {
    res.send("Hello Ravi , Your Nodejs app is up and running");
});

//Importing API routes
const auth = require('./routes/auth');
const customers = require('./routes/customers');
const policies = require('./routes/policies');

//Using/exposing routes/endpoints
app.use("/api/v1/auth", auth);
app.use("/api/v1/customers", customers);
app.use("/api/v1/policies", policies);

// Exposing Epp on PORT
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});

module.exports = app;