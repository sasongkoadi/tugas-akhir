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

module.exports = {
  getAllUser,
  getUserById
}
