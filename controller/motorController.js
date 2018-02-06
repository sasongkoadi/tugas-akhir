const motorDataModel = require('../model/motorModel')

const getMotorData = (request, response) => {
  motorDataModel.getMotorData((error, result) => {
    if (error) {
      response.status(400)
      response.json({
        message: error.message,
        stack: error.stack
      })
    } else {
      response.json({
        motor: result
      })
    }
  })
}

const getMotorDataId = (request, response) => {
  const id = request.params.id
  motorDataModel.getMotorDataId(id, (error, result) => {
    if (error) {
      response.status(400)
      response.json({
        message: error.message,
        stack: error.stack
      })
    } else {
      response.json({
        motor: result
      })
    }
  })
}

const createMotorData = (request, response) => {
  const namaMotor = request.body.namaMotor
  const jenisMotor = request.body.jenisMotor
  const CC = request.body.CC
  motorDataModel.createNewMotorData(namaMotor, jenisMotor, CC, (error, result) => {
    if (error) {
      response.result(400)
      response.json({
        message: error.message,
        stack: error.stack
      })
    } else {
      response.json({
        motor: result
      })
    }
  })
}

module.exports = {
  getMotorData,
  getMotorDataId,
  createMotorData
}
