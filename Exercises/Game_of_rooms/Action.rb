class Action
attr_accessor :tag, :block, :type, :room
def initialize (type, tag, block,room)
	@type = type
	@tag = tag
	@block = block
	@room = room
end
end