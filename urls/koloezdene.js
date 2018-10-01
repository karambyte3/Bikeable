module.exports = {
    yt : {
        title: "SELECT name FROM cycling WHERE id = 1",
        content: "SELECT content FROM cycling WHERE id = 1",
        getUrl : function() {
            return this.url
        }
    },
    
}

// obj = {
//     fname : "stefcho",
//     lname : "kalenderov",
//     fullname : function() { 
//         console.log(this.fname + " " + this.lname)
//     }
// }

// obj.fullname()