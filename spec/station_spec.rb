require 'station'
require 'passenger'
require 'train'

describe Station do
	
	let(:station) { Station.new }
	let(:passenger) { Passenger.new }
	let(:train) { Train.new }

	it "Should make passengers touch in" do
		expect(station.passenger_count).to eq(0)
		station.touch_in(passenger)
		expect(station.passenger_count).to eq(1)
	end

	it "Should make passnegers touch out" do
		station.touch_in(passenger)
		station.touch_out(passenger)
		expect(station.passenger_count).to eq(0)
	end

	it "Should allow arrival of a train" do
		expect(station.train_count).to eq(0)
		station.train_arrival(train)
		expect(station.train_count).to eq(1)
	end

	it "Should allow departure of a tain" do
		station.train_arrival(train)
		station.train_departure(train)
		expect(station.train_count).to eq(0)
	end



end