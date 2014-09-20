require 'station'
require 'passenger'

describe Station do
	
	it "Passenger should touch in at the station" do
		station = Station.new
		passenger = Passenger.new
		expect(station.passenger_count).to eq(0)
		station.touch_in(passenger)
		expect(station.passenger_count).to eq(1)
	end




end