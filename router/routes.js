const express = require('express')
const router = express.Router()
const userController = require('../controller/userController')
const pemilikMotor = require('../controller/pemilikMotorController')

// User Controller
router.get('/users', userController.getAllUser)

// Pemilik Motor Controller
router.get('/pemilikmotor', pemilikMotor.getAllPemilikMotor)

module.exports = router
