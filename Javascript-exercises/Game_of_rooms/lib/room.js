var Room = function(desc, end){
	this.desc = desc;
	this.end = end;

	this.isEnd = function() {
		if (end === true) {
			return true
		}else {
			return false
		}
	}
}

module.exports = Room