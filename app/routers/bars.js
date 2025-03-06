import { Router } from 'express';
import multer from 'multer';
import path from 'path';
import { getAllBars } from '../controllers/BarsController.js';
import { Bar } from '../models/init-models.js';
import { sequelize } from '../database.js';

const barRouter = Router();

barRouter.get('/', async (req, res) => {
    try {
        const bars = await Bar.findAll({
            
        });
        res.json(bars);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: error.message });
    }
});

barRouter.get('/bars', getAllBars);

export default barRouter;