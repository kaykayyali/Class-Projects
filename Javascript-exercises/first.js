var words, message;

words = [
	"dead",
	"bygone",
	"landing",
	"cheaply",
	"assumed",
	"incorrectly",
	"attention",
	"agent"
]

message = decode(words);
console.log(message);


function decode(words) {
	var index = 0,
		secretmessage = "";
		for (var i = 0; i < words.length; i++) {
			if (index % 5 === 0) {
					index = 0;
			}
			secretmessage += words[i].charAt(index);
			index ++;
			
		}
		return secretmessage;
}