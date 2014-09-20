class Station

	def initialize
		@station_passengers = []
		@trains = []
	end

	def passenger_count
		@station_passengers.count
	end

	def touch_in(passenger)
		@station_passengers << passenger
	end

	def touch_out(passenger)
		@station_passengers.delete(passenger)
	end

	def train_count
		@trains.count
	end

	def train_arrival(train)
		@trains << train
	end
	
	def train_departure(train)
		@trains.delete(train)
	end

	def board_coach
		@coach_passengers << @station_passengers.delete_at(passenger)
	end


end