import { Collection, BubbleTea, Tea, Topping, Pearl } from '../models/init-models.js';

export const renderPageMenu = async (req, res) => {
    try {
        console.log('Début de la récupération du menu');

        const collections = await Collection.findAll({
            attributes: [
                'id',
                'name',
                'image_collection',
                ['image_collection', 'image_collection_url'],
                'prix_l',
                'prix_xl',
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
                        { model: Tea, through: { attributes: [] }, as: 'teas', attributes: ['id', 'name'] },
                        { model: Pearl, through: { attributes: [] }, as: 'pearls', attributes: ['id', 'name'] },
                        { model: Topping, through: { attributes: [] }, as: 'toppings', attributes: ['id', 'name'] }
                    ]
                }
            ]
        });

        console.log(`Menu récupéré avec succès (${collections.length} collections trouvées)`);
        res.status(200).json({ collections });
    } catch (error) {
        console.error('Erreur lors de la récupération du menu:', error.message);
        res.status(500).json({
            message: "Erreur lors de la récupération du menu",
            sql: error.original?.sql || null,
            error: error.message
        });
    }
};

export const categoryCollection = async (req, res) => {
    try {
        const { filter } = req.params;

        if (!filter) {
            return res.status(400).json({ message: "Le filtre est manquant." });
        }

        console.log(`Recherche des collections pour la catégorie : ${filter}`);

        const collections = await Collection.findAll({
            where: { name: filter },
            attributes: [
                'id',
                'name',
                'image_collection',
                ['image_collection', 'image_collection_url'],
                'prix_l',
                'prix_xl',
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
                        { model: Tea, through: { attributes: [] }, as: 'teas', attributes: ['id', 'name'] },
                        { model: Pearl, through: { attributes: [] }, as: 'pearls', attributes: ['id', 'name'] },
                        { model: Topping, through: { attributes: [] }, as: 'toppings', attributes: ['id', 'name'] }
                    ]
                }
            ]
        });

        if (collections.length === 0) {
            return res.status(404).json({ message: "Aucune collection trouvée pour cette catégorie." });
        }

        res.status(200).json({ collections });
    } catch (error) {
        console.error('Erreur lors de la récupération des collections par catégorie:', error.message);
        res.status(500).json({
            message: "Erreur lors de la récupération des collections",
            sql: error.original?.sql || null,
            error: error.message
        });
    }
};
