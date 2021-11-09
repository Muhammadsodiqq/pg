const router = require('express').Router();
const {GET} = require('./controller.js');

router.route('/expense').get(GET);

module.exports = router
