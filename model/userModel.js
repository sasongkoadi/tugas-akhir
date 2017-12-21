const conn = require('../config/mysql').connection

function getAllUser (callback) {
  conn.query('select * from User', function (error, result) {
    if (error) callback(error, null)
    callback(null, result)
  })
}

function getUserById (id, callback) {
  conn.query('select * from User where id =' + id, function (error, result) {
    if (error) {
      callback(error, null)
    } else if (result.length > 0) {
      callback(null, result)
    } else {
      callback(null, {})
    }
  })
}

function addUser ({namaDepan, namaBelakang, alamatUser, emailUser, nomerPonselUser, userName}, callback) {
  conn.query({
    sql: 'insert into User (namaDepan, namaBelakang, alamatUser, emailUser, nomerPonselUser, userName) values (?, ?, ?, ?, ?. ?)',
    timeout: 4000,
    values: [namaDepan, namaBelakang, alamatUser, emailUser, nomerPonselUser, userName]
  }, function (error, result) {
    if (error) {
      callback(error, null)
    } else {
      getUserById(result.inserId, null)
      console.log(result.inserId)
    }
  })
}

module.exports = {
  getAllUser,
  getUserById,
  addUser
}
