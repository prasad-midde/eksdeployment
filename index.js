const express = require('express')
const app = express()
const port = process.env.PORT || 3000 ;
const config = require('config')
console.log(config);

app.get('/', (req, res) => {
  res.send('CICD App V2! Changed')
})

app.get('/home', (req, res) => {
  res.send('Welcome Home Page My First Node JS Apps !!!')
})

app.get('/status', (req, res) => {
    res.send('OK')
  })


app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})
