const express = require('express')
const config = require('./config.js')
const bodyParser = require("body-parser")
const router = require('./middlewares/router.js')
const hbs = require('express-handlebars')
const mysql = require('mysql')

const app = express()

var con = mysql.createConnection(config.database)

con.connect((err) => {
	if (err) throw err
	console.log("Connected to database!")
});

// Set app middlewares
app.use(express.static('public'))
app.use(bodyParser.urlencoded({ extended: true }))

// Set app view engine
app.engine('hbs', hbs({
	defaultLayout: 'main',
	extname: "hbs"
}));
app.set('view engine', 'hbs')

app.use('/', router)


app.listen(config.port, (err) => {
	if (err) {
		console.log('Server error', err)
	}
	console.log('Server running on port ' + config.port + '. Press CTRL+C to destroy...')
})