import dotenv from 'dotenv';

dotenv.config();

export default {
  development: {
    url: process.env.MYSQL_URL,
    dialect: 'mysql',
    logging: false,
  },
  production: {
    url: process.env.MYSQL_URL, // Render te donnera une nouvelle URL après le déploiement
    dialect: 'mysql',
    logging: false,
  },
};
