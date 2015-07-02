// function blastoff(seconds){
// 	for (var i = seconds; i >= 0; i--){
	
// 		console.log(i)
		
// 	}
// 	console.log("BlastOff!")
// }

function blastofft(seconds){
	function countdown() {
		console.log(seconds);
		seconds--;
		if(seconds >= 0) {
			setTimeout(countdown,1000);
		} else { console.log("BlastOff!");
		}
	}
	countdown();
	
}







// blastoff(5)
blastofft(5)