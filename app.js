const express = require('express')

const os = require('os') //check os

const app = express()
const port = +process.env.PORT || 3000

app.get('/', (req, res, next) => {
    res.send('Hello from Express! Current OS:' + os.platform())
})

app.listen(port, () => {
    console.log('listening on port', port)
})