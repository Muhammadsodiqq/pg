const PORT = process.env.PORT || 3400
const host = 'localhost';

const pgConfig = {
    user:'postgres',
    host:"localhost",
    port:5432,
    password:"123456",
    database:"budget"
}

module.exports = {
    pgConfig,
    PORT,
    host
}
