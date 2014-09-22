require 'train'
require 'station'

describe Train do

	let(:train) { Train.new}
	let(:station) { Station.new}
	let(:coach) { double :coach}
	
	it "Should be able to load number of coaches" do
		expect(train.coach_count).to eq(0)
		train.load_coach(coach)
		expect(train.coach_count).to eq(1)
	end

	it "Should be able to unload coches" do
		train.load_coach(coach)
		train.unload_coach(coach)
		expect(train.coach_count).to eq(0)
	end

	it "should have a maximum capacity of 10 coaches" do
		expect(train).not_to be_full
		Train::DEFAULT_CAPACITY.times { train.load_coach(:coach) }
		expect(train).to be_full
	end

	it "should be able to arrive at the station" do
		expect(station.train_count).to eq(0)
		station.train_arrival(train)
		expect(station.train_count).to eq(1)
	end

	it "should be able to leave the station" do
		station.train_arrival(train)
		station.train_departure(train)
		expect(station.train_count).to eq(0)
	end


	
end