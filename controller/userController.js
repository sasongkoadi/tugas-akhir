const userModel = require('../model/userModel')

function getAllUser (req, res) {
  userModel.getAllUser(function (error, result) {
    if (error) {
      res.status(400)
      res.json({
        message: error.message,
        stack: error.stack
      })
    } else {
      res.json({
        user: result
      })
    }
  })
}

function getUserById (req, res) {
  const id = req.params.id
  userModel.getUserById(id, function (error, result) {
    if (error) {
      res.status(400).json({
        message: error.message,
        stack: error.stack
      })
    } else {
      res.json({
        user: result
      })
    }
  })
}

module.exports = {
  getAllUser,
  getUserById
}
