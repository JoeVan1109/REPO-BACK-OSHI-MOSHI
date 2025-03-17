export const cguPage = async (req, res) => {
    try {
        res.status(200).send({
            message: "Welcome to CGU"
        });
    } catch (error) {
        console.error('Erreur', error.message);
        
        res.status(500).send({
            message: "Error retrieving construct",
            error: error.message
        });
    }
}