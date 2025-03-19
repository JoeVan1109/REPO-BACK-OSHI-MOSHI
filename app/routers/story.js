import { Router } from 'express';
import multer from 'multer';
import path from 'path';

import { storyPage } from '../controllers/StoryController.js';

const storyRouter = Router();

storyRouter.get('/', storyPage);

export default storyRouter;