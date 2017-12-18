const conn = require('../config/mysql').connection

function getAllPemilikMotor (callback) {
  conn.query('select * from pemilikroda2', function (error, result) {
    if (error) callback(error, null)
    callback(null, result)
  })
}

module.exports = {
  getAllPemilikMotor
}
