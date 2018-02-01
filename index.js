const app = require('express')()
const bodyParser = require('body-parser')
const router = require('./router/routes')

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

app.listen(4444, function () {
  console.log('Applikasi berjalan di port 4444')
})
