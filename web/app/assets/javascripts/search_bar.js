$(function() {
		var searchBar = $("#searchBar");
	$("#search-a").on("click", function(e) {
		e.preventDefault();
		searchBar.animate({left: "200px"});
	});

	$("#close").on("click", function(e) {
		e.preventDefault();
		searchBar.animate({left: "-200px"});
	});
});