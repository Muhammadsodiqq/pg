const {Pool} = require("pg")
const {pgConfig} = require("../config")

let pool = new Pool(pgConfig);

const fetch = async (query, ...params) => {
    const client =await pool.connect()
    try{
        const {rows : [row]} = await client.query(query, params ? params : null);
        return row;
    }
    catch (err){
        console.log(err)
    }finally {
        client.release()
    }
}

const fetchAll = async (query, ...params) => {
    const client =await pool.connect()
    try{
        const {rows} = await client.query(query, params ? params : null);
        return rows;
    }
    catch (err){
        console.log(err)
    }finally {
        client.release()
    }
}

module.exports = {fetch,fetchAll}
