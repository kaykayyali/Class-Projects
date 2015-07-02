function filter(episodes) {


	var filtered = episodes.filter(function(episode){
		return episode.rating > 8.5;
	});







	return filtered
}
module.exports = filter;