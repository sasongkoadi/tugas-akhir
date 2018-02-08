const pegawaiModel = require('../model/pegawaiModel')

const getPegawaiData = (request, response) => {
  pegawaiModel.getPegawaiData((error, result) => {
    if (error) {
      response.status(400).json({
        message: error.message,
        stack: error.stack
      })
    } else {
      response.json({
        pegawai: result
      })
    }
  })
}

const getPegawaiDataById = (request, response) => {
  const id = request.params.id
  pegawaiModel.getPegawaiDataById(id, (error, result) => {
    if (error) {
      response.status(400).json({
        message: error.message,
        stack: error.stack
      })
    } else {
      response.json({
        pegawai: result
      })
    }
  })
}

const addPegawaiData = (request, response) => {
  const NIK = request.body.NIK
  const namaDepan = request.body.nama_depan
  const namaBelakang = request.body.nama_belakang
  const nomerTelpon = request.body.nomer_telpon
  const alamatPegawai = request.body.alamat_pegawai
  const emailPegawai = request.body.email_pegawai
  const data = {
    NIK,
    namaDepan,
    namaBelakang,
    nomerTelpon,
    alamatPegawai,
    emailPegawai
  }
  pegawaiModel.addPegawaiData(data, (error, result) => {
    if (error) {
      response.status(400).json({
        messgae: error.message,
        stack: error.stack
      })
    } else {
      response.json({
        pegawai: result
      })
    }
  })
}

const updatePegawaiData = (request, response) => {
  const id = request.params.id
  const NIK = request.body.NIK
  const namaDepan = request.body.nama_depan
  const namaBelakang = request.body.nama_belakang
  const nomerTelpon = request.body.nomer_telpon
  const alamatPegawai = request.body.alamat_pegawai
  const emailPegawai = request.body.email_pegawai
  const data = {
    NIK,
    namaDepan,
    namaBelakang,
    nomerTelpon,
    alamatPegawai,
    emailPegawai
  }
  pegawaiModel.updatePegawaiData(data, id, (error, result) => {
    if (error) {
      response.status(400).json({
        message: error.message,
        stack: error.stack
      })
    } else {
      response.json({
        pegawai: result
      })
    }
  })
}

const deletePegawaiData = (request, response) => {
  const id = request.params.id
  pegawaiModel.deletePegawaiData(id, (error, result) => {
    if (error) {
      response.status(400).json({
        message: error.message,
        stack: error.stack
      })
    } else {
      response.json({
        result
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
