class Coach

	def initialize
		@coach_passengers = []
	end

	def passenger_count
		@coach_passengers.count
	end

	def embark(passenger)
		@coach_passengers << passenger
	end

end