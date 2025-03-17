import dotenv from 'dotenv';

dotenv.config();

export default {
  development: {
    url: process.env.MYSQL_URL,
    dialect: 'mysql',
  },
};
