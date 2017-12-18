const app = require('express')()
const bodyParser = require('body-parser')
const router = require('./router/routes')

// middleware
const jsonParser = bodyParser.json()
app.use(jsonParser)
app.use(router)

// enable CORS
app.use(function (req, res, next) {
  res.header('Access-Control-Allow-Origin', '*')
  res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept')
  next()
})

app.listen(4444, function () {
  console.log('Applikasi berjalan di port 4444')
})
