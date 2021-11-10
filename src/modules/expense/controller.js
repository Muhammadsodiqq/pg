let model = require("./model")
const GET = async (req,res) => {
    res.render("expense.html",{expenses:await model.getExpenses()});
};

const POST = async (req,res) => {

    try{
       let response =  await model.insertExpense(req.body);

        res.status(201).redirect("/expense");
    }catch(err){
        res.status(400).json({
            msg:e+""
        })
    }
};

module.exports = {GET,POST};
