function sleep(seconds, callback){
	function countdown() {
		console.log(seconds);
		seconds--;
		if(seconds > 0) {
			setTimeout(countdown,1000);
		} else { callback();
		}
	}
	countdown();
	
	}
	






sleep(10, function () {
	console.log('Its been 10 seconds.');
});