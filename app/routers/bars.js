import { Router } from 'express';

import { getAllBars } from '../controllers/BarsController.js';

export const router = Router();

router.get('/', getAllBars);