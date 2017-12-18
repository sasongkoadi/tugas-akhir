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

module.exports = {
  getAllUser
}
