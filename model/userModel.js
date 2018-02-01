const conn = require('../config/mysql').connection

const getAllUser = (callback) => {
  conn.query('select * from User', (error, result) => {
    if (error) callback(error, null)
    callback(null, result)
  })
}

const getUserById = (id, callback) => {
  conn.query('select * from User where id =' + id, (error, result) => {
    if (error) {
      callback(error, null)
    } else if (result.length > 0) {
      callback(null, result)
    } else {
      callback(null, {})
    }
  })
}

const addUser = ({namaDepan, namaBelakang, alamatUser, emailUser, nomerPonselUser, userName}, callback) => {
  conn.query({
    sql: 'insert into User (namaDepan, namaBelakang, alamatUser, emailUser, nomerPonselUser, userName) values (?, ?, ?, ?, ?, ?)',
    values: [namaDepan, namaBelakang, alamatUser, emailUser, nomerPonselUser, userName]
  }, (error, result) => {
    if (error) {
      callback(error, null)
    } else {
      getUserById(result.insertId, callback)
    }
  })
}

module.exports = {
  getAllUser,
  getUserById,
  addUser
}
