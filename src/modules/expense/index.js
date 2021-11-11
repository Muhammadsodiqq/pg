const router = require('express').Router();
const {GET,POST,DELETE} = require('./controller.js');

router.route('/expense')
.get(GET)
.post(POST)

router.route("/expense/delete/:expense_id")
.get(DELETE)

module.exports = router
