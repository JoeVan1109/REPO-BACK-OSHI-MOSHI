import 'dotenv/config';
import { createServer } from 'node:http';
import app from './app/app.js';
import { sequelize } from './app/database.js';

const PORT = process.env.PORT || 3456;

// Create an HTTP server using the Express app
const server = createServer(app);

sequelize.authenticate()
  .then(() => console.log('Connexion MySQL réussie !'))
  .catch(err => console.error('Erreur de connexion MySQL :', err));

  sequelize.sync({ force: false }).then(() => {
    console.log("Les tables sont synchronisées.");
}).catch(err => {
    console.error("Erreur de synchronisation des tables:", err);
});


// Start the server and listen on the specified port
server.listen(PORT, () => {
  console.log(`🚀 Server ready at http://localhost:${PORT}`); // Log the server URL to the console
});
