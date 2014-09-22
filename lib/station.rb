require 'coach'

class Station


	def initialize
		@passengers = []
		@trains = []
	end

	def passenger_count
		@passengers.count
	end

	def touch_in(passenger)
		@passengers << passenger
	end

	def touch_out(passenger)
		@passengers.delete(passenger)
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

	def embark_passenger(coach)
		coach.embark(@passengers.push)
	end


end