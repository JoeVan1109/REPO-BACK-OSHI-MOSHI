import { Router } from 'express';
import barsRouter from './bars.js';

const router = Router();

router.use('/bars', barsRouter);

export default router;
