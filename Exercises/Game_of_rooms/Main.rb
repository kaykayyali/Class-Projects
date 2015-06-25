require_relative("Character")
require_relative("Gamefield")
require_relative("Gameroom")
require_relative("Action")
require 'pry'

room_array = []
room_array.push(Gameroom.new("This is a very dark room. Something happened here...", [],[0,0],[], "shed", []))
room_array.push(Gameroom.new("This is the swamp. I can hear the caw of Sparrows", [],[0,1],[], "swamp", []))
room_array.push(Gameroom.new("This is the cemetery. I think I see something in the Treehouse.", [],[0,2],[], "cemetery", []))
room_array.push(Gameroom.new("This is the patio.There is a light switch", [],[1,0],[], "patio", []))
room_array.push(Gameroom.new("This is the Living room. I think I see a Treehouse outside. Someone is in there.", [],[1,1],[], "living_room", []))
room_array.push(Gameroom.new("This is the Treehouse. Looks like there is a Flashlight on the floor.", [],[1,2],[], "treehouse", []))
room_array.push(Gameroom.new("This is the Pool. There is something at the bottom. Swim?", [],[2,0],[], "pool", []))
room_array.push(Gameroom.new("This is the Kitchen. Theres something on the floor.", [],[2,1],[], "kitchen", []))
room_array.push(Gameroom.new("This must be the Parlor. Something is making noises.", [],[2,2],[], "parlor", []))



gamefield = Gamefield.new(room_array)
player = Character.new("Bob", [], room_array[0], {})

what_are_my_options = lambda{player.ingamepos.posactionsglo.each do |(key,value)| puts "#{key}" end
							player.ingamepos.posactionspriv.each do |(key,value)| puts "#{key}" end}
look_around = lambda{if player.inventory.include?("flashlight")
					 puts "Theres a shotgun here"
					 puts "You pick up the shotgun."
					 player.inventory.push("shotgun")  
					 else 
					 	puts "You need a flashlight"
					end}
pick_up_flashlight = lambda{ puts "You pick up the flashlight";
								player.inventory.push("flashlight") ;
								gamefield.room_array[5].desc = "Its empty in here"}


try_to_end_game = lambda{ if player.inventory.include?("shotgun") 
							puts "There is the murderer."
							puts "Take aim with the shotgun?"
							input = gets.chomp
							input.downcase
							if input == "yes"
								gamefield.endgamewin
							else 
								puts "You let him get away."
							end
						else
							puts "You see something going on in the treehouse to the east."
							
						end
							
}

check_inventory = lambda{ if player.inventory.count > 0 
							player.inventory.each do |item| puts "You have a #{item}." end
							else puts "Nothing in inventory." end}

actions = []
actions.push(Action.new("global", "scream", lambda{puts "HELLOOOOOOOOOO"}, "room"))
actions.push(Action.new("global", "food", lambda{puts "Yummy, a candy bar"}, "room"))
actions.push(Action.new("global", "what are my options", what_are_my_options, "room"))
actions.push(Action.new("global", "inventory", check_inventory, "room"))

actions.push(Action.new("private", "flashlight", pick_up_flashlight, "treehouse"))
actions.push(Action.new("private", "look around", lambda{puts "You saw someone, but they moved away"}, "swamp"))
actions.push(Action.new("private", "look around", look_around, "shed"))
actions.push(Action.new("private", "swim", lambda{puts "Theres a body in the water."; puts "You turn to swim away..."; puts "You died"; gamefield.endgameloss}, "pool"))
actions.push(Action.new("private", "listen", lambda{puts "You listen closely and hear a noise in the pool to the south."}, "parlor"))
actions.push(Action.new("private", "switch", lambda{puts "You hit the switch, but they flicker off"}, "patio"))
actions.push(Action.new("private", "look around", lambda{puts "There is blood on the floor. Its going towards the pool to the south."}, "kitchen"))
actions.push(Action.new("private", "look around", try_to_end_game, "cemetery"))



puts ""
puts ""
puts ""
puts "Welcome to Game of Rooms"
puts "If you get stuck, simply type 'what are my options'"
puts ""
puts ""
gamefield.loadroom(player, gamefield, actions)






