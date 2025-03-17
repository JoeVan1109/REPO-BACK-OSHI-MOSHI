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
                'url_map',
                ['created_at', 'createdAt'], 
                ['updated_at', 'updatedAt']
            ],
            order: [['created_at', 'DESC']] // Tri des bars par date de création
        });

        res.status(200).json(bars);
    } catch (error) {
        console.error('Erreur lors de la récupération des bars:', error.message);
        
        res.status(500).json({
            message: "Une erreur est survenue lors de la récupération des bars",
            sql: error.original?.sql || null, // Ajout conditionnel pour éviter les erreurs
            error: error.message
        });
    }
};
