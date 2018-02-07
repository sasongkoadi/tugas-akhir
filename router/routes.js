const express = require('express')
const router = express.Router()
const userController = require('../controller/userController')
const pemilikMotor = require('../controller/pemilikMotorController')
const motorController = require('../controller/motorController')

// User Controller
router.get('/users', userController.getAllUser)
router.get('/user/:id', userController.getUserById)
router.post('/adduser', userController.addUser)
router.put('/user/:id', userController.updateUser)
router.delete('/user/:id', userController.deleteUser)

// Motor controller
router.get('/motor', motorController.getMotorData)
router.get('/motor/:id', motorController.getMotorDataId)
router.post('/addmotor', motorController.createMotorData)
router.put('/motor/:id', motorController.updateMotorData)
router.delete('/motor/:id', motorController.deleteMotorData)

// Pemilik Motor Controller
router.get('/pemilikmotor', pemilikMotor.getAllPemilikMotor)
router.get('/pemilikmotor/:id', pemilikMotor.getPemilikMotorById)
router.post('/addpemilikmotor', pemilikMotor.addPemilikMotor)

module.exports = router
