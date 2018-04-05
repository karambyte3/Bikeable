const app = require('.../app.js')


con.query("SELECT * FROM cycling", function (err, result, fields) {
    if (err) throw err;
    console.log(result);
});
