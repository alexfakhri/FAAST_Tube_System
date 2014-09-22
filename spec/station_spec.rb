require 'station'
require 'coach'
require 'train'

describe Station do
	
	let(:station) { Station.new }
	let(:passenger) { double :passenger }
	let(:train) { double :train}
	let(:coach) { Coach.new }
 
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

	it "Should allow departure of a train" do
		station.train_arrival(train)
		station.train_departure(train)
		expect(station.train_count).to eq(0)
	end

	it "should allow passengers to embark a train" do
		expect{station.touch_in(passenger)}.to change{station.passenger_count}.by 1
		# station.touch_in(passenger)
		# expect(station.passenger_count).to eq(1)
		# station.embark_passenger coach
		# expect(coach.passenger_count).to eq(1)
		# expect(station.passenger_count).to eq(0)
		expect{station.embark_passenger(coach)}.to change{station.passenger_count}.by -1
		
	end




end