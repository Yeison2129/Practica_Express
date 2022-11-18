import Router from "express";
import { updateTask}  from "../controllers/tasks.controllers.js";

import {
  getTasks,
  getTask,
  createTasks,
  deleteTask,
} from "../controllers/tasks.controllers.js";

const router =  Router();

router.get("/tasks", getTasks);

router.get("/tasks/:id", getTask);

router.post("/", createTasks);
 


router.put("/tasks/:id", updateTask);

router.delete("/tasks/:id", deleteTask);

export default router;
