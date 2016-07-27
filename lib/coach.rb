class Coach

	DEFAULT_CAPACITY = 40

  attr_reader :capacity

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@coach_passengers = []
	end

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
