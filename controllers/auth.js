//Login Handler
exports.Login = async (req, res) => {
  //Authentication Logic Goes Here

  res.send({
    "access_token": "your_access_token",
    "expiry": new Date().setHours(new Date().getHours() + 6)
  })
};

// Signup Handler
exports.Signup = async (req, res) => {
  res.send("Signup Complete")
};