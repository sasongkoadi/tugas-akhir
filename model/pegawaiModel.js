const conn = require('../config/mysql.js').connection

const getPegawaiData = (callback) => {
  conn.query('select * from pegawai', (error, result) => {
    if (error) {
      callback(error, null)
    } else {
      callback(null, result)
    }
  })
}

const getPegawaiDataById = (id, callback) => {
  conn.query('select * from pegawai where pegawaiId = ?',
  [id],
(error, result) => {
  if (error) {
    callback(error, null)
  } else {
    callback(null, result)
  }
})
}

const addPegawaiData = ({NIK, namaDepan, namaBelakang, nomerTelpon, alamatPegawai, emailPegawai}, callback) => {
  conn.query('insert into pegawai (NIK, nama_depan, nama_belakang, nomer_telpon, alamat_pegawai, email_pegawai) values (?, ?, ?, ?, ?, ?)',
[NIK, namaDepan, namaBelakang, nomerTelpon, alamatPegawai, emailPegawai],
(error, result) => {
  if (error) {
    callback(error, null)
  } else {
    getPegawaiDataById(result.insertId, callback)
  }
})
}

const updatePegawaiData = ({NIK, namaDepan, namaBelakang, nomerTelpon, alamatPegawai, emailPegawai}, id, callback) => {
  conn.query('update pegawai set NIK = ?, nama_depan = ?, nama_belakang = ?, nomer_telpon = ?, alamat_pegawai = ?, email_pegawai = ? where pegawaiId = ?',
[NIK, namaDepan, namaBelakang, nomerTelpon, alamatPegawai, emailPegawai, id],
(error, result) => {
  if (error) {
    callback(error, null)
  } else {
    getPegawaiDataById(id, callback)
  }
})
}

const deletePegawaiData = (id, callback) => {
  conn.query('delete from pegawai where pegawaiId = ?',
[id],
(error, result) => {
  if (error) {
    callback(error, null)
  } else {
    callback(null, {
      result: 'Successfully delete pegawai data id = ' + id
    })
  }
})
}

module.exports = {
  getPegawaiData,
  getPegawaiDataById,
  addPegawaiData,
  updatePegawaiData,
  deletePegawaiData
}
