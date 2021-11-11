const url = require('url');
let model = require("./model")
const GET = async (req,res) => {
    res.render("expense.html",{expenses:await model.getExpenses()});
};

const POST = async (req,res) => {

    try{
       let response =  await model.insertExpense(req.body);

        res.status(201).redirect(url.format({
            pathname:"/expense",
            query: {
                "ok":true
            }
        }
        ));
    }catch(err){
        res.status(400).json({
            msg:e+""
        })
    }
};

const DELETE = async (req,res) => {
    try{
       let response =  await model.deleteExpense(req.params);

        res.status(201).redirect(url.format({
            pathname:"/expense",
            query: {
                "ok":true
            }
        }
        ));
    }catch(err){
        res.status(400).json({
            msg:e+""
        })
    }
};
module.exports = {GET,POST,DELETE};
