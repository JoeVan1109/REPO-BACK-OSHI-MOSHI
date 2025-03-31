import dotenv from 'dotenv';

dotenv.config();

console.log('MYSQL_URL:', process.env.MYSQL_URL);  // Vérifier la valeur de MYSQL_URL dans les logs

export default {
  development: {
    url: process.env.MYSQL_URL,
    dialect: 'mysql',
  },
};
