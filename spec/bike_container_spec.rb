require './lib/bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do 
	let(:bike) { double :bike, break!: true, broken?: false}
	let(:broken_bike) { double :bike, break!: true, broken?: true }
	let(:holder){ContainerHolder.new}
	it 'should accept a bike' do 
		expect(holder.bike_count).to eq(0)
		holder.dock(bike)
		expect(holder.bike_count).to eq(1)
	end	

	it "should release a bike" do
		holder.dock(bike)
		holder.release(bike)
		expect(holder.bike_count).to eq(0)

	end
	
	it "should know when it's full" do
		expect(holder).not_to be_full
  		10.times {holder.dock(bike) }
  		expect(holder).to be_full
	end

	it 'should not accept a bike if it\'s full' do
  		10.times { holder.dock(bike) }
  		expect(lambda { holder.dock(bike) }).to raise_error(RuntimeError, 'Station is full')
	end

	it "should provide the list of available bikes" do
		broken_bike.break!
		holder.dock(bike)
		holder.dock(broken_bike)
		expect(holder.available_bikes).to eq([bike])
	end

	it 'should know when it\'s empty' do 
		expect(holder).to be_empty
	end



end

