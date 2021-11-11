require("dotenv").config()
const PORT = process.env.PORT || 4000
const host = 'localhost';

const pgConfig = {
    user:'ylrwzuxf',
    host:"fanny.db.elephantsql.com",
    port:5432,
    password:"imR5TuvDKN7GA-YVyIv24wFxkMrOSiNb",
    database:"ylrwzuxf"
}

module.exports = {
    pgConfig,
    PORT,
    host
}
