const userModel = require('../model/userModel')

const getAllUser = (request, response) => {
  userModel.getAllUser((error, result) => {
    if (error) {
      response.status(400)
      response.json({
        message: error.message,
        stack: error.stack
      })
    } else {
      response.json({
        user: result
      })
    }
  })
}

const getUserById = (request, response) => {
  const id = request.params.id
  userModel.getUserById(id, (error, result) => {
    if (error) {
      response.status(400).json({
        message: error.message,
        stack: error.stack
      })
    } else {
      response.json({
        user: result
      })
    }
  })
}

const addUser = (request, response) => {
  const namaDepan = request.body.namaDepan
  const namaBelakang = request.body.namaBelakang
  const alamatUser = request.body.alamatUser
  const emailUser = request.body.emailUser
  const nomerPonselUser = request.body.nomerPonselUser
  const userName = request.body.userName
  const data = {
    namaDepan,
    namaBelakang,
    alamatUser,
    emailUser,
    nomerPonselUser,
    userName
  }
  userModel.addUser(data, (error, result) => {
    if (error) {
      response.status(400)
      response.json({
        message: error.message,
        stack: error.stack
      })
    } else {
      response.json({
        user: result
      })
    }
  })
}

const deleteUser = (request, response) => {
  const id = request.params.id
  userModel.deleteUser(id, (error, result) => {
    if (error) {
      response.status(400).json({
        message: error.message,
        stack: error.stack
      })
    } else {
      response.json({
        user: result
      })
    }
  })
}

module.exports = {
  getAllUser,
  getUserById,
  addUser,
  deleteUser
}
