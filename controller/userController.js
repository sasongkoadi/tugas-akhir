const userModel = require('../model/userModel')
const jwt = require('jsonwebtoken')

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
  const bearerHeader = request.headers['authorization']
  if (bearerHeader !== undefined) {
    const bearer = bearerHeader.split(' ')
    const bearerToken = bearer[1]
    request.token = bearerToken
    jwt.verify(request.token, 'Rahasiaku', (error, authData) => {
      if (error) {
        response.sendStatus(403)
      } else {
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
    })
  } else {
    response.sendStatus(403)
  }
}

const addUser = (request, response) => {
  const namaDepan = request.body.namaDepan
  const namaBelakang = request.body.namaBelakang
  const alamatUser = request.body.alamatUser
  const emailUser = request.body.emailUser
  const nomerPonselUser = request.body.nomerPonselUser
  const userName = request.body.userName
  const password = request.body.password
  const data = {
    namaDepan,
    namaBelakang,
    alamatUser,
    emailUser,
    nomerPonselUser,
    userName,
    password
  }

  jwt.sign({emailUser, password}, 'Rahasiaku', (error, token) => {
    if (error) {
      response.status(400)
    } else {
      var accessToken = token
      userModel.addUser(data, accessToken, (error, result) => {
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

const updateUser = (request, response) => {
  const id = request.params.id
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
  userModel.updateUser(data, id, (error, result) => {
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
  deleteUser,
  updateUser
}
