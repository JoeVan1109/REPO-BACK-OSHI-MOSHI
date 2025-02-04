import { Router } from 'express';
import barsRouter from './bars.js';
import menuRouter from './menu.js';

const router = Router();

router.use('/bars', barsRouter);
router.use('/menu', menuRouter);

export default router;
