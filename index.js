const express = require('express')
const app = express()
const port = process.env.HTTP_PORT || 3000
const open = require('open')

app.get('/', (req, res) => {
    res.end('Hello Gocd')
})

app.listen(port, () => {
    console.log(`Server started at ${port}`)

    if (process.env.NODE_ENV === 'development') {
        open(`http://localhost:${port}`)
    }
})