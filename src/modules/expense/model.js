const {fetch,fetchAll} = require("../../lib/postgres")

const EXPENSES = `
    SELECT
    expense_id,
    expense_name,
    expense_cost,
    TO_CHAR(expense_date,'yyyy-MM-dd') as expense_date
    FROM expense
`

const INSERT_EXPENSE = `
    INSERT INTO expense (
        expense_name,
        expense_cost
    ) VALUES ($1,$2)
    RETURNING *
`
const getExpenses = () => fetchAll(EXPENSES);

const insertExpense =async ({purpose,summa}) => {
   let newExpense = await fetch(INSERT_EXPENSE,purpose,+summa);
   return newExpense;
}

module.exports = {
    getExpenses,
    insertExpense
}
