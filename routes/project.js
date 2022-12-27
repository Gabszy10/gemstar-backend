const express = require("express");
const router = express.Router();
const { projectController } = require("../controller");
const fileUpload = require("./../helpers/projectFile");
const uuidv4 = require("uuid");
const { loggerModule } = require("../middleware/accessControll");

router.post(
  "/create",
  (req, res, next) => {
    req.projectId = uuidv4.v4();
    next();
  },
  fileUpload.array("file"),
  loggerModule("CREATE_PROJECT"),
  (req, res) => {
    const projectId = req.projectId;
    const file = req.files;
    const { users_id } = JSON.parse(req.headers.user_cookie);
    Promise.all([
      projectController.createProject({ ...req.body, projectId, users_id }),
      projectController.createProjectFileUpload(projectId, file),
    ])
      .then(() => {
        res.send({ success: true });
      })
      .catch((err) => {
        res.status(400).send({ success: false, message: err.message });
      });
  }
);

router.get("/status/fetch", (req, res) => {
  projectController.fetchStatus().then((response) => {
    res.send(response);
  });
});

router.post("/status/:projectId/create", (req, res) => {
  const { remarks, statusId } = req.body;
  const { projectId } = req.params;
  const { users_id } = JSON.parse(req.headers.user_cookie);
  projectController
    .doneProjectStatus(projectId)
    .then((response) => {
      projectController
      .createProjectStatus(projectId, users_id, statusId, remarks)
      .then((response) => {
        res.send({ success: true, data: response });
      });
    });

});

router.get("/:projectId/status/fetch", (req, res) => {
  const { projectId } = req.params;
  projectController.fetchProjectStatus(projectId).then((response) => {
    res.send({ success: true, data: response });
  });
});

router.post("/comment/create", (req, res) => {
  const commentId = uuidv4.v4();
  const { users_id } = JSON.parse(req.headers.user_cookie);
  const { projectId, comment_content } = req.body;
  projectController
    .createComment(commentId, projectId, users_id, comment_content)
    .then((projectComments) => {
      res.send({ success: true, projectComments });
    });
});

router.post("/qoutation/detail", (req, res) => {
  const qoutationId = uuidv4.v4();
  const { customer, address, engine_model, serial_number, projectId } =
    req.body;

  projectController
    .createQoutationDetails(
      qoutationId,
      customer,
      address,
      engine_model,
      serial_number,
      projectId
    )
    .then((result) => {
      res.send({ success: true, data: result });
    });
});

router.post("/quotation/services", (req, res) => {
  const {
    project_qoutation_detail_id,
    quantity,
    unit,
    services_id,
    services_name,
    unit_price,
    price,
  } = req.body;

  const project_qoutation_id = uuidv4.v4();

  projectController
    .createQoutationServices(
      project_qoutation_id,
      project_qoutation_detail_id,
      quantity,
      unit,
      services_id,
      services_name,
      unit_price,
      price
    )
    .then((result) => {
      res.send({ success: true, data: result });
    })
    .catch((err) => {
      res.status(400).send({ success: false, message: err.message });
    });
});

router.put(
  "/quotation/:projectId/:project_qoutation_detail_id/show",
  (req, res) => {
    const { projectId, project_qoutation_detail_id } = req.params;
    projectController
      .showQoutation(projectId, project_qoutation_detail_id)
      .then((result) => {
        res.send({ success: true, data: result });
      });
  }
);

router.put(
  "/quotation/:projectId/:project_qoutation_detail_id/final",
  (req, res) => {
    const { projectId, project_qoutation_detail_id } = req.params;
    projectController
      .finalizeQoutation(projectId, project_qoutation_detail_id)
      .then((result) => {
        res.send({ success: true, data: result });
      });
  }
);

router.get("/fetch", (req, res) => {
  const { users_id } = JSON.parse(req.headers.user_cookie);
  console.log(req.headers);
  const { user_level_acc } = JSON.parse(req.headers.user_cookie);
  projectController.fetchProject(users_id, user_level_acc).then((result) => {
    res.send({ success: true, data: result });
  });
});

router.get("/fetch/admin", async (req, res) => {
  let response = [];
  await projectController.fetchProjectAsAdmin().then((result) => {
    for (let i = 0; i < result.length; i++) {
      if(!result[i].employee_id){
        result[i].employee_id = JSON.stringify(['']);
      }
      projectController.fetchEmployees(JSON.parse(result[i].employee_id).map(a => a.id)).then(assignedEmployees => {
        if(assignedEmployees != ['']){
          console.log(assignedEmployees);
        }

        response.push({
          ...result[i], 
          assignedEmployees: assignedEmployees == [''] ? [] : assignedEmployees
        })
        if(i+1 == result.length){
          res.json({ success: true, data: response });
        }
      })
    }
    
  });
  
});

router.get("/fetch/list", (req, res) => {
  projectController.fetchAdminTable().then((result) => {
    res.json({ success: true, data: result });
  });
});

router.get("/fetch/:projectId", (req, res) => {
  const { projectId } = req.params;
  Promise.all([
    projectController.fetchProjectDetails(projectId),
    projectController.fetchProjectFiles(projectId),
    projectController.fetchComments(projectId),
    projectController.fetchQuotationDetails(projectId),
    projectController.fetchProjectStatus(projectId),
  ]).then(
    ([
      projectDetails,
      projectFiles,
      projectComments,
      projectQuotation,
      projectStatus,
    ]) => {
      if(!projectDetails.employee_id){
        projectDetails.employee_id = JSON.stringify(['']);
      }
      projectController.fetchEmployees(JSON.parse(projectDetails.employee_id).map(a => a.id)).then(assignedEmployees => {
        console.log(assignedEmployees)
        projectDetails['assignedEmployees'] = assignedEmployees;
        res.send({
          success: true,
          projectDetails,
          projectFiles,
          projectComments,
          projectQuotation,
          projectStatus,
        });
      })
    }
  );
});

router.put("/employee/assign/:projectId", (req, res) => {
  const { projectId } = req.params;
  const { userId } = req.body;
  projectController.assignEmployee(JSON.stringify(userId), projectId).then((projectDetails) => {
    res.send({ success: true, projectDetails });
  });
});

router.get("/download/:projectId/:fileName", (req, res) => {
  const { projectId, fileName } = req.params;
  const path = `${process.env.PROJECT_DIR}/${projectId}/${fileName}`;
  res.download(path);
});

module.exports = router;
