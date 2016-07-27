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

	it "Should allow arrival to a train" do
		expect(station.train_count).to eq(0)
		station.train_arrival(train)
		expect(station.train_count).to eq(1)
	end

	it "Should allow departure of a train" do
		station.train_arrival(train)
		station.train_departure(train)
		expect(station.train_count).to eq(0)
	end

	it "Should allow passengers to board the coach" do
		station.touch_in(passenger)
		expect{station.release(passenger)}.to change{station.passenger_count}.by -1
		expect{coach.embark_station_passenger(station, passenger)}.to change{coach.passenger_count}.by 1
	end

	it "should allow passengers to disembark the coach" do
		expect{coach.embark_station_passenger(station, passenger)}.to change{coach.passenger_count}.by 1
		expect{station.disembark_coach_passenger(coach,passenger)}.to change{coach.passenger_count }.by -1
	end

end
