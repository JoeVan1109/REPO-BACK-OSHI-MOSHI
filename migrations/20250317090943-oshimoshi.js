import db from '../models/index.js';

console.log('🗑️ Suppression des tables existantes...'); // Notamment pour relancer le script plusieurs fois si on veut faire un reset:db
await db.drop();

console.log('🚧 Création des tables...'); // Synchroniser le modèle séquelize avec la BDD, ie, RE-CREER la table à partir du modèle db
await db.sync();

console.log('✅ Migration OK ! Fermeture de la base...'); // On ferme le tunnel de connexion pour que le script s'arrête bien
await db.close();
