import { Router } from 'express';
import multer from 'multer';
import path from 'path';

import { cguPage } from '../controllers/CguController.js';

const cguRouter = Router();

cguRouter.get('/', cguPage);

export default cguRouter;