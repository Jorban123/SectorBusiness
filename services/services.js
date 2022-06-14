

async function pagination(req, res, model, limitUsers, sortBy) {
    try {
        let page = req.query.page || 1
        if (page == 0) {
            page = 1
        }
        const users = await model.findAll({
            offset: page * limitUsers - limitUsers,
            limit: limitUsers,
            order: [sortBy]
        })
        return users;
    } catch (e) {
        res.status(500).json(e)
    }
}
export default pagination;