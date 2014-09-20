class Coach

	DEFAULT_CAPACITY = 40

	def initialize(options = {})
		@capacity = DEFAULT_CAPACITY
		@coach_passengers = []
	end

	def passenger_count
		@coach_passengers.count
	end

	def board_passenger(passenger)
		@coach_passengers << passenger
	end

	def disembark_passenger(passenger)
		@coach_passengers.delete(passenger)
	end

	def full?
		passenger_count == @capacity
	end

end