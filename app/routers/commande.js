import { Router } from 'express';
import multer from 'multer';
import path from 'path';

import { commandePage } from '../controllers/CommandeController.js';

const commandeRouter = Router();

commandeRouter.get('/', commandePage);

export default commandeRouter;