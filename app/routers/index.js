import { Router } from 'express';

import { router as barsRouter } from './bars.js';

export const router = Router();

router.use('/bars', barsRouter);