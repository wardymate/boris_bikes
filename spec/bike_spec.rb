require 'bike'

describe Bike do 
	it 'should not be broken after we create' do
		the_bike = Bike.new
		expect(the_bike).not_to be_broken
	end
	
end