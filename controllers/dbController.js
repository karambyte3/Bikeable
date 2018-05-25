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

// let renderArticle = (callback) => {
//     con.query("SELECT content FROM cycling WHERE id = 1", function (err, result) {
//         if (err) throw err;
//         let content = result[0].content
//         callback(content)
//     })
// }

// let articleTitle = (callback) => {
//     con.query("SELECT name FROM cycling WHERE id = 1", function (err, result) {
//         if (err) throw err
//         let articleName = result[0].name
//         callback(articleName)
//     })
// }

let sql = "SELECT content FROM cycling WHERE id = 1; SELECT name FROM cycling WHERE id = 1"

let renderArticle = (article, articleTitle) => {
    con.query(sql, function (err, result) {
        if (err) throw err;
        let articleContent = result[0].
        article(articleContent)
        
        // let title = result[0].name
        // articleTitle(title)
        
    })

//     con.query("SELECT name FROM cycling WHERE id = 1", function (err, result) {
//         if (err) throw err
//         let title = result[0].name
//         articleTitle(title)
//    })
}


con.on('error', function(err) {
  console.log("[mysql error]",err);
});

module.exports = {
    con,
    renderArticle,
    // articleTitle
}