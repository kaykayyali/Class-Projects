class Gamefield

attr_accessor :room_array

def initialize(room_array)
	@room_array = room_array
end

def endgameloss
	puts "The Murderer got you."
	puts "Thanks for playing."
	abort
end

def endgamewin
	puts "You got the murderer."
	puts "Thanks for playing."
	abort
end

def loadroom(player, gamefield, actions)
	puts ""
	room = player.ingamepos
	puts room.desc
	puts ""
	
	globalactions = actions.select {|action| action.type == "global"}
	privateactions = actions.select {|action| action.type == "private" && action.room == room.roomname}
	player.ingamepos.posactionsglo = globalactions.each_with_object({}) {|item, dict| dict[item.tag] = item.block}
	player.ingamepos.posactionspriv = privateactions.each_with_object({}) {|item, dict| dict[item.tag] = item.block}
	player.ingamepos.posactionsglo.sort
	player.ingamepos.posactionspriv.sort
	optionshandler(player,gamefield,actions)


end

def optionshandler(player,gamefield,actions)
	
	input = gets.chomp
	input.downcase
	puts ""

	case input
	when "n" 
		if player.ingamepos.tag[1] >= 0 && player.ingamepos.tag[1] < 2
			changeroom(player,gamefield, input, actions)
		else 
			puts "You can't go that way"
			loadroom(player,gamefield,actions)
		end
	when "s" 
		if player.ingamepos.tag[1] > 0 && player.ingamepos.tag[1] <= 2
			changeroom(player,gamefield, input, actions)
		else 
			puts "You can't go that way"
			loadroom(player,gamefield,actions)
		end

	when "e" 
		if player.ingamepos.tag[0] >= 0 && player.ingamepos.tag[0] < 2
			changeroom(player,gamefield, input, actions)
		else 
			puts "You can't go that way"
			loadroom(player,gamefield, actions)
		end
	
	when "w" 
		if player.ingamepos.tag[0] > 0 && player.ingamepos.tag[0] <= 2
			changeroom(player,gamefield, input, actions)
		else 
			puts "You can't go that way"
			loadroom(player,gamefield, actions)
		end
	when "quit" || "exit"
		puts "Thanks for playing"

	else

		if player.ingamepos.posactionsglo.include?(input)
			player.ingamepos.posactionsglo[input].call
			loadroom(player,gamefield, actions)
		


		elsif player.ingamepos.posactionspriv.include?(input)
			player.ingamepos.posactionspriv[input].call
			loadroom(player,gamefield, actions)
		
		else puts "Invalid entry"
		loadroom(player,gamefield, actions)
		end





		

	end







end



	def changeroom(player,gamefield,change, actions)

		case change

		when "n"
			currentposition = [player.ingamepos.tag[0], player.ingamepos.tag[1]]
			currentposition[1] = currentposition[1] + 1
			player.ingamepos = gamefield.room_array.detect {|room| room.tag == currentposition}
			loadroom(player,gamefield, actions)
		when "e"
			currentposition = [player.ingamepos.tag[0], player.ingamepos.tag[1]]
			currentposition[0] = currentposition[0] + 1
			player.ingamepos = gamefield.room_array.detect {|room| room.tag == currentposition}
			loadroom(player,gamefield, actions)
		when "w"
			currentposition = [player.ingamepos.tag[0], player.ingamepos.tag[1]]
			currentposition[0] = currentposition[0] - 1
			player.ingamepos = gamefield.room_array.detect {|room| room.tag == currentposition}
			loadroom(player,gamefield, actions)
		when "s"
			currentposition = [player.ingamepos.tag[0], player.ingamepos.tag[1]]
			currentposition[1] = currentposition[1] - 1
			player.ingamepos = gamefield.room_array.detect {|room| room.tag == currentposition}
			loadroom(player,gamefield, actions)
		else
			puts "Error in ChangeRoom"

		end
		


	end

end