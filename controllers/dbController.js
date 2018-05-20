'use strict';
const mysql = require("mysql");
const config = require('../config.js')
const router = ('../middlewares/router.js')

let con = mysql.createConnection(config.database)

con.connect(function (err) {
	if (err) throw err;
	console.log("Connected to DB...")
});

let renderArticle = (callback) => {
    con.query("SELECT content FROM cycling WHERE id = 1", function (err, result) {
        if (err) throw err;
        let content = result[0].content
        callback(content)
    })
}

let articleTitle = (callback) => {
    con.query("SELECT name FROM cycling WHERE id = 1", function (err, result) {
        if (err) throw err
        let articleName = result[0].name
        callback(articleName)
    })
}

con.on('error', function(err) {
  console.log("[mysql error]",err);
});

module.exports = {
    con,
    renderArticle,
    articleTitle
}