const router = require('express').Router();
const {GET,POST} = require('./controller.js');

router.route('/expense')
.get(GET)
.post(POST)


module.exports = router
