const {Pool} = require("pg")
const {pgConfig} = require("../config")

let pool = new Pool(pgConfig);

const fetch = async (query, ...params) => {
    const clien =await pool.connect()
    try{
        const {rows : [row]} = client.query(query, params ? params : null);
        return rows;
    }
    catch (err){
        console.log(err)
    }finally {
        clien.release()
    }
}
const fetchAll = async (query, ...params) => {
    const clien =await pool.connect()
    try{
        const {rows} = client.query(query, params ? params : null);
        return rows;
    }
    catch (err){
        console.log(err)
    }finally {
        clien.release()
    }
}

module.exports = {fetch,fetchAll}
