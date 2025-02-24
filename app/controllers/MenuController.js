import { Collection } from '../models/init-models.js';

export const renderPageMenu = async (req, res) => {
    try {
        const collections = await Collection.findAll({
            attributes: [
                'id',
                'name',
                'image_collection',
                ['created_at', 'createdAt'],
                ['updated_at', 'updatedAt']
            ],
            include: {
                associations: 'bubble_tea',
                attributes: [
                    'id',
                    'name',
                    'prixL',
                    'prixXl',
                    'image',
                    'color',
                    'icone',
                    'milk_name',
                    ['created_at', 'createdAt'],
                    ['updated_at', 'updatedAt']
                ]
            }
        });

        res.status(200).send({ collections });
    } catch (error) {
        console.error('Erreur SQL:', error.original?.sql);
        res.status(500).send({
            message: "Error rendering menu page",
            error: error.message
        });
    }
};
