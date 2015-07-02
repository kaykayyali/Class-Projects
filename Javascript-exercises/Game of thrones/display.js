function display(episodes){

function searchFor(episode) {
			
	if (episode.description.indexOf('Jon snow') > -1) {
		return  ("Episode " +episode.episode_number + " features Jon Snow.")
	} else if (episode.description.indexOf('Jon') > -1){
		return  ("Episode " +episode.episode_number + " features Jon Snow.")
	} 
	
				
}

function makeStars(rating) {
	var string = ""
		for (var i = 0; i < Math.floor(rating); i++){
			string = string + "*"
					}
		return string
}

var sorted  = episodes.sort(function(a, b){
  return a.episode_number - b.episode_number
});

	

	episodes.forEach (function(episode){
		console.log("Title:",episode.title,"  ",  "Episode #:", episode.episode_number)



		console.log(searchFor(episode))
		console.log(episode.description)


		console.log("Rating:", episode.rating, "  ", makeStars(episode.rating))
	});
}

module.exports = display;