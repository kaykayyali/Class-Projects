class Car

	def initialize(engine)

		@engine = engine
		
	end


	def run

		print "tatatatata" + " " 

		@engine.on

	end

	def fail_to_run

		print @engine.break

	end

end