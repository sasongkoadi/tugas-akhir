const app = require('express')()
const bodyParser = require('body-parser')
const router = require('./router/routes')
const port = 4444

// middleware
const jsonParser = bodyParser.json()
app.use(jsonParser)
app.use(router)

// enable CORS
app.use(function (request, response, next) {
  response.header('Access-Control-Allow-Origin', '*')
  response.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept')
  next()
})

app.listen(port, function () {
  console.log('Applikasi berjalan di port ' + port)
})
