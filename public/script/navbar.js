$(document).ready(function () {
	if (location.pathname != "/") {
		$('#menu a[href^="/' + location.pathname.split("/")[1] + '"]').addClass('active');
	} else $('#menu a:eq(0)').addClass('active');
})
 
var elems = document.getElementsByClassName('nav');
for (var i = 0; i < elems.length; i += 1) {
	elems[i].style.display = 'block';
}

$(document).ready(function () {
	$("#toggleMenu").click(function () {
		$("li").toggleClass("nav-responsive");
	});
});