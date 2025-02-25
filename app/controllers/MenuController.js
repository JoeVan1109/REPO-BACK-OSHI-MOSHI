import { Collection, BubbleTea, Tea, Topping, Pearl } from '../models/init-models.js';
import { sequelize } from '../database.js';


export const renderPageMenu = async (req, res) => {
    try {
        console.log('Début de la requête');
        
        // Vérifiez que les modèles sont correctement importés
        console.log('Collection model:', Collection);
        console.log('BubbleTea model:', BubbleTea);

        const collections = await Collection.findAll({
            attributes: [
                'id',
                'name',
                'image_collection',

                ['image_collection', 'image_collection_url'],

                'prixL',
                'prixXL',

                ['created_at', 'createdAt'],
                ['updated_at', 'updatedAt']
            ],
            include: [
                {
                    model: BubbleTea,
                    as: 'bubble_teas',
                    attributes: [
                        'id',
                        'name',
                        'image',
                        'color',
                        'icone',
                        'milk_name',

                        ['icone', 'icone_url'],

                        ['created_at', 'createdAt'],
                        ['updated_at', 'updatedAt']
                    ],
                    include: [
                        {
                            model: Tea,
                            through: { attributes: [] },
                            as: 'teas',
                            attributes: ['id', 'name']
                        },
                        {
                            model: Pearl,
                            through: { attributes: [] },
                            as: 'pearls',
                            attributes: ['id', 'name']
                        },
                        {
                            model: Topping,
                            through: { attributes: [] },
                            as: 'toppings',
                            attributes: ['id', 'name']
                        }
                    ],
                    
                }
            ]
        });
        

        console.log('Requête réussie, résultats:', collections);
        res.status(200).json({ collections });
    } catch (error) {
        console.error('Erreur détaillée:', error);
        console.error('Erreur SQL:', error.original?.sql);
        res.status(500).json({
            message: "Error rendering menu page",
            error: error.message,
            stack: error.stack
        });
    }
}

export const categoryCollection = async (req, res) => {
    try {
        const { filter } = req.params;

        console.log(filter)

        const collections = await Collection.findAll( {


            where: {
                name: filter
            },

            attributes: [
                'id',
                'name',
                'image_collection',

                ['image_collection', 'image_collection_url'],

                'prixL',
                'prixXL',

                ['created_at', 'createdAt'],
                ['updated_at', 'updatedAt']
            ],
            include: [
                {
                    model: BubbleTea,
                    as: 'bubble_teas',
                    attributes: [
                        'id',
                        'name',
                        'image',
                        'color',
                        'icone',
                        'milk_name',

                        ['icone', 'icone_url'],

                        ['created_at', 'createdAt'],
                        ['updated_at', 'updatedAt']
                    ],
                    include: [
                        {
                            model: Tea,
                            through: { attributes: [] },
                            as: 'teas',
                            attributes: ['id', 'name']
                        },
                        {
                            model: Pearl,
                            through: { attributes: [] },
                            as: 'pearls',
                            attributes: ['id', 'name']
                        },
                        {
                            model: Topping,
                            through: { attributes: [] },
                            as: 'toppings',
                            attributes: ['id', 'name']
                        }
                    ],
                    
                }
            ]
        });
        res.status(200).json({ collections });
    } catch (error) {
        console.error('Erreur détaillée:', error);
        console.error('Erreur SQL:', error.original?.sql);
        res.status(500).json({
            message: "Error rendering menu page",
            error: error.message,
            stack: error.stack
        });
    }
}
