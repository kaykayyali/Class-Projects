'use strict';


$('#inputArtist').on('focus', function() {
	$('#search_results').slideToggle();
});

$('.btn[type="submit"]').on('click', function(event){
	$('#search_results').slideToggle();
	event.preventDefault;
	$('#search_results').empty();
	var searchTerm = $('#inputArtist').val();
	var  url = "https://api.spotify.com/v1/search?type=artist&query=" + searchTerm
	var request = $.get(url, handleArtists)
});
function handleArtists(data) {
	console.log(data)
	
	data.artists.items.forEach(function(artist) {
		if (artist.images[0] != undefined){
			$('#search_results').append('<li>'+"<button type='artist' id = '"+ artist.id + "'>" + artist.name + "<img class = 'img-circle' src='" + artist.images[0].url +"' width=10%>" +"</button>"+'</li>')
		}
	});
	$('button[type="artist"]').on('click', function(event){
	
		console.log(event.target.id);
		var searchTerm = event.target.id
		var  url = "https://api.spotify.com/v1/artists/"+ searchTerm +"/albums" 
		console.log (url)
		var request = $.get(url, handleAlbums)
	});
};

function handleAlbums(data) {
	console.log(data)
	$('#album_results').empty()
	var previousName = ""
	data.items.forEach(function(album,index) {
		if (previousName != album.name){

			$('#album_results').append('<li>'+"<button type='album' id = '"+ album.id + "'>" + album.name + " <img class = 'img-circle' src='" + album.images[0].url +"' width=10%>" +"</button>"+'</li>')
		}
	 previousName = album.name
	});

	$('button[type="album"]').on('click', function(event){		
		console.log(event.target.id);
		var searchTerm = event.target.id
		var  url = "https://api.spotify.com/v1/albums/"+ searchTerm +"/tracks" 
		console.log (url)
		var request = $.get(url, handleTracks)
	});

	$('#albumModal').modal('toggle')

};

function handleTracks(data) {
	console.log(data)
	$('#albumModal').modal('toggle')

	$('#tracks_results').empty()
	var previousName = ""

	data.items.forEach(function(track) {
		console.log(track.name)
		$('#tracks_results').append('<li>' + "<a href= '" + track.preview_url + "' target='_blank'>"+ track.name +"</a>" +'</li>')			
	});

	$('#tracksModal').modal('toggle')
};




