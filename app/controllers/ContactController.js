export const contactPage = async (req, res) => {
    try {
        res.status(200).send({
            message: "Welcome to Contact API"
        });
    } catch (error) {
        console.error('Erreur', error.message);
        res.status(500).send({
            message: "Error retrieving contact",
            error: error.message
        });
    }
}

export const contactFranchisePage = async (req, res) => {
    try {
        res.status(200).send({
            message: "Welcome to Contact Franchise API"
        });
    } catch (error) {
        console.error('Erreur', error.message);
        res.status(500).send({
            message: "Error retrieving contact franchise",
            error: error.message
        });
    }
}