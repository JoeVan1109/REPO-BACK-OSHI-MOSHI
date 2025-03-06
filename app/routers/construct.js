import { Router } from 'express';
import multer from 'multer';
import path from 'path';

import { constructPage } from '../controllers/ConstructController.js';

const constructRouter = Router();

constructRouter.get('/', constructPage);

export default constructRouter;