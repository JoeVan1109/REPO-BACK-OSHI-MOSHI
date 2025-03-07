import { Router } from 'express';
import barsRouter from './bars.js';
import menuRouter from './menu.js';
import constructRouter from './construct.js';
import cguRouter from './cgu.js';

const router = Router();

router.use('/bars', barsRouter);
router.use('/menu', menuRouter);
router.use('/construct', constructRouter);
router.use('/cgu', cguRouter);

export default router;
