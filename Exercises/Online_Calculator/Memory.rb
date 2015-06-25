class Memory

	def determine(value)


		case value

		when "return"

			 return IO.read('public/data.txt')


		when "clear"


			return ""
		end
	end
end