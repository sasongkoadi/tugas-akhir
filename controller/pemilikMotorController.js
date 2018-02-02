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

module.exports = {
  getAllPemilikMotor,
  getPemilikMotorById
}
