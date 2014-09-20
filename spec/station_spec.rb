require 'station'
require 'passenger'

describe Station do
	
	it "Should make passengers touch in" do
		station = Station.new
		passenger = Passenger.new
		expect(station.passenger_count).to eq(0)
		station.touch_in(passenger)
		expect(station.passenger_count).to eq(1)
	end

	it "Should make passnegers touch out" do
		station = Station.new
		passenger = Passenger.new
		station.touch_in(passenger)
		station.touch_out(passenger)
		expect(station.passenger_count).to eq(0)
	end




end