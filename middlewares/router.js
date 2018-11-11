const express = require('express')
const router = express.Router()
const db = require('../controllers/dbController.js')
const url = require('../urls/koloezdene.js')

router.get('/', (req, res) => {
	res.render('home', {
		title: 'Home'
	})
})

router.get('/cycling', (req, res) => {
	res.render('cycling', {
		title: 'Колоездене'
	})
})

router.get('/articles', (req, res) => {
	res.render('articles', {
		title: 'Статии'
	})
})

// показване на страницата със статии
router.get('/article/:id', (req, res, next) => {	
	let articleId = req.params.id
	db.getArticle(articleId, (err, article) => {
		if (!err) {
			res.render('article', {
				title: article.title,
				author: article.author,
				content: article.content
			})
		} else {
			next() //търси други GET url-и които съвпадат и не намира нищо ==> показва страничката за 404
		}
	})
	
})

router.get('/bikes', (req, res) => {
	res.render('./bikes/main.hbs', {
		title: 'Байкове'
	})
})

router.get('/about', (req, res) => {
	res.render('about', {
		title: 'About'
	})
})

// router.get('/yt', (req, res) => {
// 	db.renderContent((content) => {
// 		db.articleTitle((articleName) => {
// 			res.render('article', {
// 				content: content,
// 				title: articleName
// 			})
// 		})
// 	})
// })

// router.get('/cycling/yt', (req, res) => {
// 	res.render('./cycling/yt.hbs', {
// 		title: 'yt'
// 	})
// })

router.get('/cycling/downhill', (req, res) => {
	res.render('./cycling/downhill.hbs', {
		title: 'Спускане (downhill) DH'
	})
})

router.get('/cycling/cross-country-xc', (req, res) => {
	res.render('./cycling/cross-country.hbs', {
		title: 'Крос-кънтри (cross-country) - XC'
	})
})

router.get('/cycling/freeride', (req, res) => {
	res.render('./cycling/freeride.hbs', {
		title: 'Фрийрайд (freeride) FR'
	})
})

router.get('/cycling/dirt-jump', (req, res) => {
	res.render('./cycling/dirt-jump.hbs', {
		title: 'Dirt Jump - DJ'
	})
})








router.use(function (req, res) {
	res.render("404", {
		title: "Page not found"
	})
	res.status(404);
})


module.exports = router