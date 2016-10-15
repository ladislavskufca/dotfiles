//var images = ['0001.jpg', '0002.jpg'];
var images = ['0001.jpg'];
$('body').css({'background-image': 'url(images/' + images[Math.floor(Math.random() * images.length)] + ')'});

var searchbox = document.getElementById('search');

//Uncomment line below to focus on serach on load

// $('#search').focus();
searchbox.onkeypress = function(e) {
	if (e.keyCode === 13) {
		search();
	}
}

function search() {
	var query = searchbox.value;
	window.location = 'https://www.google.si/search?q=' + query;
}

function clear() {
	searchbox.val = null;
	searchbox.blur();
}