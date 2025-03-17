import 'dotenv/config';
import { Sequelize } from 'sequelize';

const { 
    MYSQLUSER: user,
    MYSQLDATABASE: database,
    MYSQLPASSWORD: password,
    MYSQLHOST: host,
    MYSQLPORT: port,
} = process.env;

// protocol://user:password@host:port/resource
export const client = new Sequelize(`mysql://${user}:${password}@${host}:${port}/${database}`,{
    define: {
        createdAt: 'created_at',
        updatedAt: 'updated_at',
    },
    logging: false,
});

client.authenticate()
    .then(
        () => console.log(`🚀 database ${database} connected`),
        () => console.log(`❌ unable to connect to database ${database}`)
    );

/*
try {
    await sequelize.authenticate()
    console.log('database connection ok')
} catch (error){
   console.log('Houston, i\'ve got a problem')
}
*/
