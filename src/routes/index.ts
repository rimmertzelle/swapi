import Express, { Router } from "express";
import { getPeople, getPerson } from "../controllers/peopleController.js";
const router: Router = Express.Router();

// router.get('/', (req: Request, res: Response, next: NextFunction) => {
//   res.json('hi');
//   next();
// });
router.get("/people", getPeople);
router.get("/people/:id", getPerson);

export default router;
