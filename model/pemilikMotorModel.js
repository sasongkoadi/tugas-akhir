const conn = require('../config/mysql').connection

const getAllPemilikMotor = (callback) => {
  conn.query('select pemilikMotor.id, namaDepan, namaBelakang,username, alamatUser, nomerPonselUser, namaMotor, jenisMotor, CC, platNomer, nomerRangka, nomerMesin from pemilikMotor left join User on pemilikMotor.namaPemilik = User.id left join Motor on pemilikMotor.motorPemilik = Motor.id', (error, result) => {
    if (error) callback(error, null)
    callback(null, result)
  })
}

const getPemilkMotorById = (id, callback) => {
  conn.query('select pemilikMotor.id, namaDepan, namaBelakang,username, alamatUser, nomerPonselUser, namaMotor, jenisMotor, CC, platNomer, nomerRangka, nomerMesin from pemilikMotor left join User on pemilikMotor.namaPemilik = User.id left join Motor on pemilikMotor.motorPemilik = Motor.id where pemilikMotor.id =' + id, (error, result) => {
    if (error) {
      callback(error, null)
    } else {
      callback(null, result)
    }
  })
}

const getPemilikMotorByUserId = (id, callback) => {
  conn.query('select pemilikMotor.id, namaDepan, namaBelakang,username, alamatUser, nomerPonselUser, namaMotor, jenisMotor, CC, platNomer, nomerRangka, nomerMesin from pemilikMotor left join User on pemilikMotor.namaPemilik = User.id left join Motor on pemilikMotor.motorPemilik = Motor.id where User.id = ?',
[id],
(error, result) => {
  if (error) {
    callback(error, null)
  } else {
    callback(null, result)
  }
})
}

const addPemilikMotor = (namaPemilik, motorPemilik, platNomer, nomerRangka, nomerMesin, callback) => {
  conn.query('insert into pemilikMotor (namaPemilik, motorPemilik, platNomer, nomerRangka, nomerMesin) values (?, ? , ?, ?, ?)',
[namaPemilik, motorPemilik, platNomer, nomerRangka, nomerMesin],
(error, result) => {
  if (error) {
    callback(error, null)
  } else {
    getPemilkMotorById(result.insertId, callback)
  }
})
}

const updatePemilikMotor = (namaPemilik, motorPemilik, platNomer, nomerRangka, nomerMesin, id, callback) => {
  conn.query('update pemilikMotor set namaPemilik = ?, motorPemilik = ?, platNomer = ?, nomerRangka = ?, nomerMesin = ? where id = ?',
[namaPemilik, motorPemilik, platNomer, nomerRangka, nomerMesin, id], (error, result) => {
  if (error) {
    callback(error, null)
  } else {
    getPemilkMotorById(id, callback)
  }
})
}

const deletePemilikMotor = (id, callback) => {
  conn.query('delete from pemilikMotor where id = ?',
[id],
(error, result) => {
  if (error) {
    callback(error, null)
  } else {
    callback(null, {
      message: 'Sucessfull delete data id = ' + id
    })
  }
})
}

module.exports = {
  getAllPemilikMotor,
  getPemilkMotorById,
  getPemilikMotorByUserId,
  addPemilikMotor,
  updatePemilikMotor,
  deletePemilikMotor
}
