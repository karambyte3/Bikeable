const mysql = require("mysql");
const config = require('../config.js')
const router = ('../middlewares/router.js')
const fs = require('fs')
const urls = require('../urls/koloezdene.js')

let yt = urls.yt

// Creating DATABASE connection
let con = mysql.createConnection(config.database)

con.connect(function (err) {
    if (err) throw err
    console.log('Connected to database!');

});


// Check if DATABASE exists
con.query('CREATE DATABASE IF NOT EXISTS bikeable', function (err) {
    if (err) throw err;
});

// Load page title from database
let articleTitle = (callback) => {
    con.query(yt.title, function (err, result) {
        if (err) throw err
        let articleName = result[0].name
        callback(articleName)
    })
}

// Load page content from database
let renderContent = (callback) => {
    con.query(yt.content, function (err, result) {
        if (err) throw err;
        let content = result[0].content
        callback(content)
    })
}

con.on('error', function (err) {
    console.log("[mysql error]", err);
});

module.exports = {
    con,
    renderContent,
    articleTitle,
}