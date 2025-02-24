import { Collection, BubbleTea, Tea, Topping, Pearl } from '../models/init-models.js';


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
                        'prixL',
                        'prixXL',
                        'image',
                        'color',
                        'icone',
                        'milk_name',
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
