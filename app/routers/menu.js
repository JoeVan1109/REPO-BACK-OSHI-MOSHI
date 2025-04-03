import { Router } from 'express';
import multer from 'multer';
import path from 'path';
import { categoryCollection, renderPageMenu } from '../controllers/MenuController.js';
import { sequelize } from '../database.js';

const menuRouter = Router();

menuRouter.get('/api/', renderPageMenu);
menuRouter.post('/api/:filter', categoryCollection)

export default menuRouter;