const express = require('express')
const router = express.Router()
const userController = require('../controller/userController')
const pemilikMotor = require('../controller/pemilikMotorController')

// User Controller
router.get('/users', userController.getAllUser)
router.get('/user/:id', userController.getUserById)
router.post('/adduser', userController.addUser)
router.delete('/user/:id', userController.deleteUser)
router.put('/user/:id', userController.updateUser)

// Pemilik Motor Controller
router.get('/pemilikmotor', pemilikMotor.getAllPemilikMotor)
router.get('/pemilikmotor/:id', pemilikMotor.getPemilikMotorById)

module.exports = router
