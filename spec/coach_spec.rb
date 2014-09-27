require 'coach'
require 'station'

describe Coach do

	let(:coach) { Coach.new(:capacity => 40) }
	let(:station) { Station.new }
	let(:passenger) { double :passenger }

	it "Should be initialized with a capacity" do
		expect(coach.capacity).to eq(40)
	end

	it "should be able to board passengers" do
		expect{station.touch_in(passenger)}.to change{station.passenger_count}.by +1
		expect{coach.embark_station_passenger(station, passenger)}.to change{station.passenger_count}.by -1
	end
	
	it "Should only allow passengers to dissembark" do
		expect{coach.embark_station_passenger(station, passenger)}.to change{coach.passenger_count}.by 1
		expect{coach.release(passenger)}.to change{coach.passenger_count}.by -1
	end

end

