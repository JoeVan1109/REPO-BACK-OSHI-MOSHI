import models from '../models/init-models.js';

const { bar } = models;

export const getAllBars = async (req, res) => {
    try {
        const bars = await bar.findAll();
        res.status(200).send(bars);
    } catch (error) {
        res.status(500).send({
            message: "Error retrieving bars",
            error: error.message
        });
    }
};