function decode(words){
	var index = 0,
		secretMessage = '';
	
	for( var i = 0; i<words.length; i++)
	{
		secretMessage += words[i].charAt(i%5);
		//index = (index % 5 === 0 ? 0 : index + 1);
	}

	return secretMessage;
}



module.exports = decode;