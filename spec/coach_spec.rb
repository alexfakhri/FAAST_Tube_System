require 'coach'

describe Coach do

	let(:passenger) { Passenger.new }
	let(:coach) { Coach.new(:capacity => 40) }

	it "should allow a passenger to board" do
		expect(coach.passenger_count).to eq(0)
		coach.board_passenger(passenger)
		expect(coach.passenger_count).to eq(1)
	end

	it "should allow a passnger to disembark" do
		coach.board_passenger(passenger)
		coach.disembark_passenger(passenger)
		expect(coach.passenger_count).to eq(0)
	end

	it "Should know when it's full" do
		expect(coach).not_to be_full
		40.times { coach.board_passenger(Passenger.new) }
		expect(coach).to be_full
	end

	
end