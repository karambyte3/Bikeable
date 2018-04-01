const express = require('express')
const router = express.Router()

router.get('/', (req, res) => {
	res.render('home', {title: 'Home'})
})

router.get('/koloezdene', (req, res) => {
	res.render('koloezdene', {title: 'Колоездене'})
})

router.get('/articles', (req, res) => {
	res.render('articles', {title: 'Статии'})
})

router.get('/bikes', (req, res) => {
	res.render('./bikes/main.hbs', {title: 'Байкове'})
})

router.get('/about', (req, res) => {
	res.render('about', {title: 'About'})
})

router.use(function (req, res) {
	res.render("404", { title: "Page not found", pageUrl: req.url })
	res.status(404);
})

module.exports = router