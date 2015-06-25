class Word_Checker

	def initialize(provider)

		@subjects = provider.subjects
	end

	def check_for_words(array)

		
		
			@subjects.each do |subject|
			hasenough = array.count
			
				array.each do |word|
				
				
					if subject.include?(word)
						hasenough -= 1
						
					end
                end
				
					if hasenough == 0
						return true
					end
				
			end
			
			return false
	end

end