import { Router } from 'express';
import barsRouter from './bars.js';
import menuRouter from './menu.js';
import constructRouter from './construct.js';
import cguRouter from './cgu.js';
import storyRouter from './story.js';
import commandeRouter from './commande.js';
import contactRouter from './contact.js';

const router = Router();

router.use('/bars', barsRouter);
router.use('/menu', menuRouter);
router.use('/construct', constructRouter);
router.use('/cgu', cguRouter);
router.use('/story', storyRouter);
router.use('/commande', commandeRouter);
router.use('/contact', contactRouter);

export default router;
