let model = require("./model")
const GET = async (req,res) => {
    res.render("expense.html",{expense:await model.getExpenses()});
};

module.exports = {GET};
