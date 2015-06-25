	require 'terminfo.rb'
p = TermInfo.screen_size
termxmid = p[0] / 2
termymid = p[1] / 2

class SlidePrinter

	def initialize(slide)
		@slide = slide
	end

	def print_slide
		puts "" * termxmid
		print "" * termymid
		print slide
	end
end