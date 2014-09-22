class Train

	DEFAULT_CAPACITY = 10

	def initialize 
		@capacity = DEFAULT_CAPACITY
		@coaches = []
	end

	# attr_reader :capacity

	def coach_count
		@coaches.count
	end

	def load_coach(coach)
		@coaches << coach
	end

	def unload_coach(coach)
		@coaches.delete(coach)
	end

	def full?
		coach_count == @capacity
	end

end