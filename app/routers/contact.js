import { Router } from 'express';
import multer from 'multer';
import path from 'path';

import { contactPage, contactFranchisePage } from '../controllers/ContactController.js';

const contactRouter = Router();

contactRouter.get('/', contactPage);
contactRouter.get('/franchise', contactFranchisePage);

export default contactRouter;