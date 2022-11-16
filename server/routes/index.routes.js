import { Router } from "express";
import conexion from "../db/db.js";
const router = Router();

router.get("/", async (req, res) => {
  conexion.query('CALL consultar ', (error, rows) => {
    if (rows) {
      return res.json({ data: rows }); 
    } else {
      return res.json({ data: error }); 
    }
  });
});






export default router;
