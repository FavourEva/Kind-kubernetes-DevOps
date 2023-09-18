const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send('Hello World! This is my web app!!')
})

app.listen(port, () => {
  console.log(`my web app listening on port ${port}`)
})