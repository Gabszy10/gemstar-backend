const express = require("express");
const router = express.Router();
const { notificationController } = require("../controller");

router.get("/", (req, res) => {
  const { users_id } = JSON.parse(req.headers.user_cookie);
  notificationController.fetchNotification(users_id).then((response) => {
    res.send({ success: true, ...response });
  });
});

router.put("/dismiss", (req, res) => {
  const { notificationId } = req.body;
  const { users_id } = JSON.parse(req.headers.user_cookie);
  notificationController
    .dismissNotification(notificationId, users_id)
    .then((result) => {
      res.send(result);
    });
});

module.exports = router;
