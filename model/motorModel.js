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

const updateMotorData = (namaMotor, jenisMotor, CC, id, callback) => {
  conn.query('update Motor set namaMotor = ?, jenisMotor = ?, CC = ? where id = ?',
[namaMotor, jenisMotor, CC, id],
(error, result) => {
  if (error) {
    callback(error, null)
  } else {
    getMotorDataId(id, callback)
  }
})
}

const deleteMotorData = (id, callback) => {
  conn.query('delete from Motor where id = ?',
[id],
(error, result) => {
  if (error) {
    callback(error, null)
  } else {
    callback(null, {
      message: 'Succesfully deleted id = ' + id
    })
  }
})
}

module.exports = {
  getMotorData,
  createNewMotorData,
  getMotorDataId,
  updateMotorData,
  deleteMotorData
}
