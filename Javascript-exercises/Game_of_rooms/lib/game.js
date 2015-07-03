var Room = require('room.js')

var Game = function(){
	this.currentposition = "0,0"
	this.rooms = [
					"0,0" = new Room("North Tower, 1101 Brickell.", false),
					"0,1" = new Room("South Tower", false),
					"1,1" = new Room("Nasty Cafe", false),
					"0,2" = new Room("CoffeeZone", false),
					"1,2" = new Room("3rd Flr, Nizar's Office", false),
					"2,2" = new Room("8th Flr, Pipeline.", true),
					]


	this.move = function(input) {
		function testMove(movement) {

		}
		switch (input) {
		  case "n":
		  		var movement = [0,1]
		    
		    break;
		  case "s":
		    	var movement = [-1,0]
		    break;
		  case "e":
		    	var movement = [1,0]

		    break;
		  case "w":
		    	var movement = [0,-1]
		    	
		    break;
		  default:
		    console.log("I don't know what that means.");
		}
	}


}