import { Router } from 'express';
import multer from 'multer';
import path from 'path';
import { renderPageMenu } from '../controllers/MenuController.js';
import { sequelize } from '../database.js';

const menuRouter = Router();

menuRouter.get('/', renderPageMenu);

export default menuRouter;