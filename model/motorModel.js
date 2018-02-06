const conn = require('../config/mysql').connection

const getMotorData = (callback) => {
  conn.query('select * from Motor', (error, result) => {
    if (error) {
      callback(error, null)
    } else {
      callback(null, result)
    }
  })
}

const getMotorDataId = (id, callback) => {
  conn.query('select * from Motor where id = ?',
[id],
(error, result) => {
  if (error) {
    callback(error, null)
  } else {
    callback(null, result)
  }
})
}

const createNewMotorData = (namaMotor, jenisMotor, CC, callback) => {
  conn.query('insert into Motor (namaMotor, jenisMotor, CC) values (?, ?, ?)',
[namaMotor, jenisMotor, CC],
(error, result) => {
  if (error) {
    callback(error, null)
  } else {
    getMotorDataId(result.insertId, callback)
  }
})
}

module.exports = {
  getMotorData,
  createNewMotorData,
  getMotorDataId
}
