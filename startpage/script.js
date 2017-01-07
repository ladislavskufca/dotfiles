var searchbox = document.getElementById('search');

$('#search').focus();
searchbox.onkeypress = function(e) {
	if (e.keyCode === 13) {
		var query = searchbox.value;
		window.location = 'https://www.google.si/search?q=' + query;
	}
}
