class Calculator
	def calculate(user_num1, user_num2, operation)

		case operation
		
		when "add"
			
			return (user_num1 + user_num2)
		
		when "subtract"
			
			return (user_num1 - user_num2)

		when "multiply"
		
			return (user_num1 * user_num2)

		when "divide"

			return (user_num1 / user_num2)

		else


			 return "Invalid Input"


		end




	end
end