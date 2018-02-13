const conn = require('../config/mysql').connection

const getOrderData = (callback) => {
  conn.query('select orderService.id, namaDepan, namaBelakang,username, alamatUser, nomerPonselUser, namaMotor, jenisMotor, CC, platNomer, nomerRangka, nomerMesin, jenisPerbaikan, tanggalService, jamService from pemilikMotor join User on pemilikMotor.namaPemilik = User.id join Motor on pemilikMotor.motorPemilik = Motor.id JOIN orderService on orderService.motorPelanggan = pemilikMotor.id', (error, result) => {
    if (error) {
      callback(error, null)
    } else {
      callback(null, result)
    }
  })
}

module.exports = {
  getOrderData
}
