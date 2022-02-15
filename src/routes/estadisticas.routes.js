import { Router } from "express";

import {getCompositores} from "../controllers/estadisticas.controller";

const router = Router();

/**
 * @swagger
 * /tasks:
 *  get:
 *    summary: Get all compositores
 *    tags: [Tasks]
 */

router.get("/compositores", getCompositores);