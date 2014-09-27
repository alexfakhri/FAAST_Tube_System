class Coach

	def initialize
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