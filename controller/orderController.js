const orderModel = require('../model/orederModel')

const getOrderData = (request, response) => {
  orderModel.getOrderData((error, result) => {
    if (error) {
      response.status(400).json({
        message: error.message,
        stack: error.stack
      })
    } else {
      response.json({
        orderData: result
      })
    }
  })
}

module.exports = {
  getOrderData
}
