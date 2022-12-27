const express = require("express");
const router = express.Router();
const { AuthController } = require("../controller");
const { loggerModule } = require("../middleware/accessControll");

router.get("/authenticated", (req, res) => {
  if (req.headers.user_cookie) {
    AuthController.getByUsersId(JSON.parse(req.headers.user_cookie).users_id).then((result) => {
      res.json({ success: true, user: result });
    });
   
  } else {
    res.json({ success: false });
  }
});

router.post("/register", (req, res) => {
  AuthController.register(req.body)
    .then(() => {
      res.send({ success: true });
    })
    .catch((err) => {
      res.status(400).send({ success: false, message: err.message });
    });
});

router.put("/dynamic", (req, res) => {
  const { fieldName, value, usersId } = req.body;
  const { users_id } = JSON.parse(req.headers.user_cookie);

  AuthController.dynamicUpdate(usersId || users_id, fieldName, value)
    .then(() => {
      res.send({ success: true });
    })
    .catch((err) => {
      res.status(400).send({ success: false, message: err.message });
    });
});

router.post("/login", (req, res) => {
  AuthController.login(req.body)
    .then((result) => {
      req.headers.user_cookie = result.users_id;
      req.user = result;
      res.send({ success: true, data: result });
    })
    .catch((err) => {
      res.status(400).send({ success: false, message: err.message });
    });
});

router.get("/employee", (req, res) => {
  const userLevel = process.env.EMPLOYEE_USER_LEVEL;
  AuthController.getUsersByUserLevel(userLevel).then((result) => {
    res.send({ success: true, data: result });
  });
});

router.get("/all", (req, res) => {
  AuthController.getAllUsers().then((result) => {
    res.send({ success: true, data: result });
  });
});

router.get("/user-levels", (req, res) => {
  AuthController.getAllUserLevel().then((result) => {
    res.send({ success: true, data: result });
  });
});

router.get("/logout", loggerModule("LOGOUT"), (req, res) => {
  req.headers.user_cookie.destroy();
  req.headers.user.destroy();
  res.send("logout");
});

router.get("/:usersId", (req, res) => {
  const { usersId } = req.params;
  AuthController.getByUsersId(usersId).then((result) => {
    res.send({ success: true, data: result });
  });
});

module.exports = router;
