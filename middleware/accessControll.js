const logsTemplate = require("./logsTemplate");

module.exports = {
  isAuthenticated: (req, res, next) => {
    if (!!req.headers.user_cookie) {
      next();
    } else {
      // Not authorized stop the execution of the route here and send http 401 response
      res.status(401).send("not authenticated");
    }
  },
  loggerModule: (LOGTYPE) => (req, res, next) => {
    const { body, params, session } = req;
    // console.log(req)
    const props = { ...body, ...params };
    logsTemplate[LOGTYPE](props, LOGTYPE, session.user || null);
    next();
  },
};
