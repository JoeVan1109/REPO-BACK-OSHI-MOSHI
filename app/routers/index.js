import { Router } from 'express';
import barsRouter from './bars.js';
import menuRouter from './menu.js';
import constructRouter from './construct.js';

const router = Router();

router.use('/bars', barsRouter);
router.use('/menu', menuRouter);
router.use('/construct', constructRouter);

export default router;
