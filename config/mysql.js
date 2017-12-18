const mysql = require('mysql')
const connection = mysql.createConnection({
  host: '127.0.0.1',
  user: 'root',
  password: 'Sasongko023',
  database: 'node-sql',
  port: 65000
})

const pool = mysql.createPool({
  host: '127.0.0.1',
  user: 'root',
  password: 'Sasongko023',
  database: 'node-sql',
  port: 65000,
  connectionLimit: 10
})

connection.connect(function (err, result) {
  console.log(err)
  console.log(result)
})

module.exports = {
  connection,
  pool
}
