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
            attributes: { 
                include: [
                    [sequelize.literal(`CONCAT('${process.env.BASE_URL}/api/images/bar/', name)`), 'imageUrl']
                ]
            }
        });
        res.json(bars);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: error.message });
    }
});

export default barRouter;