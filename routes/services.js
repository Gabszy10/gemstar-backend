const express = require("express");
const router = express.Router();
const { ServicesController } = require("../controller");

router.post("/add", (req, res) => {
  const data = req.body;
  const {users_id} = req.headers.user_cookie;
  ServicesController.add({ ...data, users_id }).then((result) => {
    res.send({ success: true, data: result });
  });
  // const userId = req.session
  // ServicesController.add()
});

router.get("/fetch", (req, res) => {
  ServicesController.fetch().then((result) => {
    res.send({ success: true, data: result });
  });
});

module.exports = router;
