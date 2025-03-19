

export const commandePage = async (req, res) => {
    try {
        res.status(200).send({
            message: "Welcome to Commande API"
        });
    } catch (error) {
        console.error('Erreur', error.message);
        res.status(500).send({
            message: "Error retrieving commande",
            error: error.message
        });
    }
}