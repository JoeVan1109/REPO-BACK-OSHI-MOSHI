import { Bar } from '../models/init-models.js';

export const getAllBars = async (req, res) => {
    try {
        const bars = await Bar.findAll({
            attributes: [
                'id', 
                'name', 
                'adresse', 
                'horaire', 
                'image1', 
                'image2', 
                'image3', 
                'image4', 
                'image5',
                ['created_at', 'createdAt'], // Alias pour camelCase
                ['updated_at', 'updatedAt']
            ]
        });
        res.status(200).send(bars);
    } catch (error) {
        console.error('Erreur SQL:', error.original.sql); // Affiche la requête SQL
        res.status(500).send({
            message: "Error retrieving bars",
            error: error.message
        });
    }
};
