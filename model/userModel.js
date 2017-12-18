const conn = require('../config/mysql').connection

function getAllUser (callback) {
  conn.query('select * from User', function (error, result) {
    if (error) callback(error, null)
    callback(null, result)
  })
}

module.exports = {
  getAllUser
}
