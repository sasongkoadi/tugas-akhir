const mysql = require('mysql')
const {host, user, password, database, port} = require('../secret/db_configuration')

const connection = mysql.createConnection({host, user, password, database, port})

const pool = mysql.createPool({host, user, password, database, port, connectionLimit: 10})

connection.connect(function (err, result) {
  console.log(err)
  console.log(result)
})

module.exports = {
  connection,
  pool
}
