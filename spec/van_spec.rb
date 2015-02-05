require './lib/van'

van = Van.new

describe van do

	#test that the module methods are available
	it 'should know when it\'s empty' do 
		expect(van).to be_empty
	end


	
end