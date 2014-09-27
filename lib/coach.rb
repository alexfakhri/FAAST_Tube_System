class Coach

	DEFAULT_CAPACITY = 40

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@coach_passengers = []
	end

	attr_reader :capacity

	def passenger_count
		@coach_passengers.count
	end

	def embark_station_passenger(station, passenger)
		@coach_passengers << passenger
			station.release(passenger)
	end

	def release(passenger)
		@coach_passengers.delete(passenger)
	end

end