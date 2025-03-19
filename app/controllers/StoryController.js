export const storyPage = async (req, res) => {
    try {
        res.status(200).send({
            message: "Welcome to Story API"
        });
    } catch (error) {
        console.error('Erreur', error.message);
        res.status(500).send({
            message: "Error retrieving story",
            error: error.message
        });
    }
}