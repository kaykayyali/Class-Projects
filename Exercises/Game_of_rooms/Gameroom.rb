class Gameroom
	attr_accessor :desc, :posactionspriv, :tag, :items, :roomname,:posactionsglo
	def initialize(desc, posactionspriv, tag, items, roomname, posactionsglo)
		@desc = desc
		@posactionspriv = posactionspriv
		@tag = tag
		@items = items
		@roomname = roomname
		@posactionsglo = posactionsglo
	end

end