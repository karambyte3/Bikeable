const mysql = require("mysql");
const config = require('../config.js')
const router = ('../middlewares/router.js')
const fs = require('fs')

// Creating DATABASE connection
let con = mysql.createConnection(config.database)

con.connect(function (err) {
    if(err) throw err
    console.log('Connected to database!');
    
});


// Check if DATABASE exists
con.query('CREATE DATABASE IF NOT EXISTS bikeable', function (err) {
    if (err) throw err;
});

let renderArticle = (callback) => {
    con.query("SELECT content FROM cycling WHERE id = 1", function (err, result, fields) {
        if (err) throw err;
        let content = result[0].content
        callback(content)
    })
}

con.on('error', function(err) {
  console.log("[mysql error]",err);
});

module.exports = {
    con,
    renderArticle
}