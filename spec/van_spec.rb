require './lib/van'

van = Van.new
station = DockingStation.new
bike = Bike.new
garage = DockingStation.new

describe Van do

	#test that the module methods are available
	it 'should know when it\'s empty' do 
		expect(van).to be_empty
	end

 it 'should be able to travel to a location' do
 	expect(van.travel_to(garage)).to eq(garage)
 end
	
end