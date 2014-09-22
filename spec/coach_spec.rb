require 'coach'
require 'station'

describe Coach do

	let(:coach) { Coach.new }
	let(:station) { Station.new }
	

it "should be able to hold pssengers" do
	expect(coach.passenger_count).to eq(0)
	coach.embark(:passenger)
	expect(coach.passenger_count).to eq (1)

end





	
end