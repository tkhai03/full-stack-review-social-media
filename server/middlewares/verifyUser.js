module.exports = (req, res, next) => {
    if(req.session.user) {  //to verify their identity
        next()
    } else {
        res.status(403).send('Please log in to perform this action')
    }
}