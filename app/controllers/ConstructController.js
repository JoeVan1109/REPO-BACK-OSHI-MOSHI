export const constructPage = async (req, res) => {
    try {
        res.status(200).send({
            message: "Welcome to Construct API"
        });
    } catch (error) {
        console.error('Erreur SQL:', error.original.sql);
        res.status(500).send({
            message: "Error retrieving construct",
            error: error.message
        });
    }
}