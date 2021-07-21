//Authorization Middleware to check whether the user have correct token or not
exports.Authorization = async (req, res, next) => {
  if (req.headers["authorization"] && req.headers["authorization"] === "Bearer your_access_token") {
    //Should Verify the Authorization headers to authorize users

    // const result = await VerifyToken(req.headers["authorization"].replace("Bearer ", ""));
    return next();
  } else {
    res.statusCode = 401
    res.send("Unauthorized");
  }
};

