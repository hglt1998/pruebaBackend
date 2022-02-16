import { Router } from "express";
import { getComposers} from "../controllers/controller";

const router = Router();


router.get("/compositores", getComposers);


export default router;
