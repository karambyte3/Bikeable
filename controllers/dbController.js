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

// Load page content from databaseþ
let renderContent = (callback) => {
    con.query(yt.content, function (err, result) {
        if (err) throw err;
        let content = result[0].content
        callback(content)
    })
}

//Взимане на статия чрез ID от базата
let getArticle = ((articleId, callback) => {
    //!!!какво прави заявката е описано по-долу
    con.query("SELECT articles.*, authors.name as author FROM articles INNER JOIN authors ON articles.author_id = authors.id WHERE articles.id = " + articleId, (err, article) => {
        if (!!err || !article.length) {
            console.log(err);
            callback(true, [])
        } else {
            callback(false, article[0])
        }
    })
})

//Взимаме всички поста за да може да ги покажем на страницата със статии
let getAllArticles = ((callback) => {
    //!!!!!! с тази заявка, както и с тази на горната функция взимаме всички статии + името на автора, защото в таблицата със статии е записано само ID, а не име
    con.query("SELECT articles.*, authors.name as author FROM articles INNER JOIN authors ON articles.author_id = authors.id", (err, articles) => {
        if (!!err) {
            console.log(err);
        } else {
            callback(articles)
        }
    })
})

con.on('error', function (err) {
    console.log("[mysql error]", err);
});

module.exports = {
    con,
    renderContent,
    articleTitle,
    getArticle,
    getAllArticles
}