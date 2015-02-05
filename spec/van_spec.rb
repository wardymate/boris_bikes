require './lib/van'

van = Van.new
station = DockingStation.new
bike = Bike.new

describe van do

	#test that the module methods are available
	it 'should know when it\'s empty' do 
		expect(van).to be_empty
	end

 it 'should be able to check for available bikes' do

		expect(van.ask_for_bikes(station)).to eq []
	end

	
end