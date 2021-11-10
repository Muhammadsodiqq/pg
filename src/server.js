const path = require("path");
const express = require("express");
const ejs = require("ejs");
const modules = require("./modules/home/index")
const expense = require("./modules/expense/index")
const {PORT,host} = require('./config')

const app = express();

//settings
app.engine('html',ejs.renderFile);
app.set("view engine",'html');
app.set('views' ,path.join(__dirname,'views'));
// middlewares
app.use(express.static(path.join(__dirname, 'public')));
app.use(express.urlencoded({extended:true}));
app.use(modules);
app.use(expense);


app.listen(PORT, () => console.log('*'+ PORT));
