const conn = require('../config/mysql').connection

const getAllPemilikMotor = (callback) => {
  conn.query('select pemilikMotor.id, namaDepan, namaBelakang,username, alamatUser, nomerPonselUser, namaMotor, jenisMotor, CC, platNomer, nomerRangka, nomerMesin from pemilikMotor left join User on pemilikMotor.namaPemilik = User.id left join Motor on pemilikMotor.motorPemilik = Motor.id', (error, result) => {
    if (error) callback(error, null)
    callback(null, result)
  })
}

const getPemilkMotorById = (id, callback) => {
  conn.query('select pemilikMotor.id, namaDepan, namaBelakang,username, alamatUser, nomerPonselUser, namaMotor, jenisMotor, CC, platNomer, nomerRangka, nomerMesin from pemilikMotor left join User on pemilikMotor.namaPemilik = User.id left join Motor on pemilikMotor.motorPemilik = Motor.id where User.id =' + id, (error, result) => {
    if (error) {
      callback(error, null)
    } else {
      callback(null, result)
    }
  })
}

module.exports = {
  getAllPemilikMotor,
  getPemilkMotorById
}
