import { Router } from 'express';
import barsRouter from './bars.js';
import menuRouter from './menu.js';
import constructRouter from './construct.js';
import cguRouter from './cgu.js';
import storyRouter from './story.js';
import commandeRouter from './commande.js';
import contactRouter from './contact.js';

const router = Router();

router.use('/api/bars', barsRouter);
router.use('/api/menu', menuRouter);
router.use('/api/construct', constructRouter);
router.use('/api/cgu', cguRouter);
router.use('/api/story', storyRouter);
router.use('/api/commande', commandeRouter);
router.use('/api/contact', contactRouter);

export default router;
