const pemilikMotorModel = require('../model/pemilikMotorModel')

function getAllPemilikMotor (req, res) {
  pemilikMotorModel.getAllPemilikMotor(function (error, result) {
    if (error) {
      res.status(400)
      res.json({
        message: error.message,
        stack: error.stack
      })
    } else {
      res.json({
        pemilikMotor: result
      })
    }
  })
}

const getPemilikMotorById = (request, response) => {
  const id = request.params.id
  pemilikMotorModel.getPemilkMotorById(id, (error, result) => {
    if (error) {
      response.status(400).json({
        message: error.message,
        stack: error.stack
      })
    } else {
      response.json({
        pemilikmotor: result
      })
    }
  })
}

const addPemilikMotor = (request, response) => {
  const namaPemilik = request.body.namaPemilik
  const motorPemilik = request.body.motorPemilik
  const platNomer = request.body.platNomer
  const nomerRangka = request.body.nomerRangka
  const nomerMesin = request.body.nomerMesin

  pemilikMotorModel.addPemilikMotor(namaPemilik, motorPemilik, platNomer, nomerRangka, nomerMesin, (error, result) => {
    if (error) {
      response.status(400).json({
        message: error.message,
        stack: error.stack
      })
    } else {
      response.json({
        pemilikMotor: result
      })
    }
  })
}

module.exports = {
  getAllPemilikMotor,
  getPemilikMotorById,
  addPemilikMotor
}
