const express = require('express')
const router = express.Router()
const userController = require('../controller/userController')
const pemilikMotor = require('../controller/pemilikMotorController')
const motorController = require('../controller/motorController')
const pegawaiController = require('../controller/pegawaiController')
const orderController = require('../controller/orderController')

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
router.get('/pemilikmotor/user/:id', pemilikMotor.getPemilikMotorByUserId)
router.post('/addpemilikmotor', pemilikMotor.addPemilikMotor)
router.put('/pemilikmotor/:id', pemilikMotor.updatePemilikMotor)
router.delete('/pemilikmotor/:id', pemilikMotor.deletePemilikMotor)

// Pegawai Controller
router.get('/pegawai', pegawaiController.getPegawaiData)
router.get('/pegawai/:id', pegawaiController.getPegawaiDataById)
router.post('/addpegawai', pegawaiController.addPegawaiData)
router.put('/pegawai/:id', pegawaiController.updatePegawaiData)
router.delete('/pegawai/:id', pegawaiController.deletePegawaiData)

// Order Controller
router.get('/orderdata', orderController.getOrderData)

module.exports = router
