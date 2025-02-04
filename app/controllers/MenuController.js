export const renderPageMenu = async (req, res) => {
    try {
        res.status(200).send({ message: "Menu page route works!" });
    } catch (error) {
        console.error('Erreur SQL:', error.original?.sql);
        res.status(500).send({
            message: "Error rendering menu page",
            error: error.message
        });
    }
};
