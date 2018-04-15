const mysql = require("mysql");
const config = require('../config.js')

var con = mysql.createConnection(config.database)

con.connect(function (err) {
	if (err) throw err;
	console.log("Connected to DB...")
});

con.on('error', function(err) {
  console.log("[mysql error]",err);
});

var query = {
	loginEmail: "SELECT * FROM `users` WHERE email=?",
	loginUser: "SELECT * FROM `users` WHERE email = ? AND password = ?;",
	loginPassword: "SELECT * FROM `users` WHERE password=?",
	insertUser: "INSERT INTO `users` (`ID`, `username`, `password`, `email`) VALUES (NULL, ?, ?, ?)",
	alreadyExist: "SELECT * FROM `users` WHERE username=? AND email=?",
	usernameAlreadyExist: "SELECT * FROM `users` WHERE username=?",
	emailAlreadyExist: "SELECT * FROM `users` WHERE email=?",
}

let loginUser = (email, password, callback) => {
	con.query(query.loginUser, [email, password], (err, result) => {
		callback(result)
	})
}

let registerUser = (username, password, email) => {
	con.query(query.insertUser, [username, password, email])
}

let alreadyExist = (username, email, callback) => {
	con.query(query.alreadyExist, [username, email], (err, result) => {
		callback(result)
	})
}

let usernameAlreadyExist = (username, callback) => {
	con.query(query.usernameAlreadyExist, [username], (err, result) => {
		callback(result)
	})
}

let emailAlreadyExist = (email, callback) => {
	con.query(query.emailAlreadyExist, [email], (err, result) => {
		callback(result)
	})
}

module.exports = {
	con: con,
	query: query,
	loginUser,
	registerUser,
	alreadyExist,
	usernameAlreadyExist,
	emailAlreadyExist
}
