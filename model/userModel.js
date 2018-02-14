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

const addUser = ({namaDepan, namaBelakang, alamatUser, emailUser, nomerPonselUser, userName, password}, accessToken, callback) => {
  conn.query({
    sql: 'insert into User (namaDepan, namaBelakang, alamatUser, emailUser, nomerPonselUser, userName, accessToken, password) values (?, ?, ?, ?, ?, ?, ?, PASSWORD(?))',
    values: [namaDepan, namaBelakang, alamatUser, emailUser, nomerPonselUser, userName, accessToken, password]
  }, (error, result) => {
    if (error) {
      callback(error, null)
    } else {
      getUserById(result.insertId, callback)
    }
  })
}

const deleteUser = (id, callback) => {
  conn.query('delete from User where id =' + id, (error, result) => {
    if (error) {
      callback(error, null)
    } else {
      callback(null, {
        message: 'Successfully deleted id = ' + id
      })
    }
  })
}

const updateUser = ({namaDepan, namaBelakang, alamatUser, emailUser, nomerPonselUser, userName}, id, callback) => {
  conn.query({
    sql: 'update User set namaDepan = ?, namaBelakang = ?, alamatUser = ?, emailUser = ?, nomerPonselUser = ?, userName = ? where id = ?',
    values: [namaDepan, namaBelakang, alamatUser, emailUser, nomerPonselUser, userName, id]},
(error, result) => {
  if (error) {
    callback(error, null)
  } else {
    getUserById(id, callback)
  }
})
}

module.exports = {
  getAllUser,
  getUserById,
  addUser,
  deleteUser,
  updateUser
}
