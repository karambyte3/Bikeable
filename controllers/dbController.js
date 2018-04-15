const mysql = require("mysql");
const config = require('../config.js')
const router = ('../middlewares/router.js')

var con = mysql.createConnection(config.database)

con.connect(function (err) {
	if (err) throw err;
	console.log("Connected to DB...")
});

var renderArticle = () => {
    con.query("SELECT content FROM cycling WHERE id = 1", function (err, result, fields) {
        if (err) throw err;
        return result
    })
}



con.on('error', function(err) {
  console.log("[mysql error]",err);
});

module.exports = {
    con: con,
    renderArticle,
    
}