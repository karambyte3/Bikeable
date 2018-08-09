const express = require('express')
const router = express.Router()
const db = require('../controllers/dbController.js')

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

router.get('/yt', (req, res) => {
	db.renderContent((content) => {
		db.articleTitle((articleName) => {
			res.render('article', {
				content: content,
				title: articleName
			})
		})
	})
})

router.get('/cycling/yt', (req, res) => {
	res.render('./cycling/yt.hbs', {
		title: 'yt'
	})
})


router.use(function (req, res) {
	res.render("404", {
		title: "Page not found"
	})
	res.status(404);
})


module.exports = router