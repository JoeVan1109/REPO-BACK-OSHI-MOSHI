import { Router } from 'express';
import barsRouter from './bars.js';
import menuRouter from './menu.js';
import constructRouter from './construct.js';
import cguRouter from './cgu.js';
import storyRouter from './story.js';

const router = Router();

router.use('/bars', barsRouter);
router.use('/menu', menuRouter);
router.use('/construct', constructRouter);
router.use('/cgu', cguRouter);
router.use('/story', storyRouter);

export default router;
