import { Sequelize } from 'sequelize';
import dotenv from 'dotenv';
import config from '../config/config.js';

dotenv.config();

export const sequelize = new Sequelize(config.development.url, {
    dialect: 'mysql',
    logging: false,
});
