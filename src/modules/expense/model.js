const {fetch,fetchAll} = require("../../lib/postgres")

const EXPENSES = `
    SELECT
        *
    FROM expense
`
const getExpenses = () => fetchAll(EXPENSES);

module.exports = {
    getExpenses
}
