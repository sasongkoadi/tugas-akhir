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

module.exports = {
  getAllPemilikMotor
}
