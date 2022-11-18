import express, { json } from "express";
import { PORT } from "./config.js";


import indexRoutes from "./routes/index.routes.js";
import taskRoutes from "./routes/tasks.routes.js";

const app = express();

app.use(indexRoutes);
app.use(taskRoutes);

app.use(express.json())

app.listen(PORT, () => {
  console.log(`Corre el servidor en el puerto ${PORT}` + `:D`);
});
