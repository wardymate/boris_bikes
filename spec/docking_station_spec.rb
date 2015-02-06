require './lib/docking_station'

	describe DockingStation do
		let (:station)     { DockingStation.new(capacity: 10)}
		let (:broken_bike) { double :bike, break!: true, broken?: true }

		it 'should allow setting default capacity on initialising' do
			expect(station.capacity).to eq(10)
		end

		# it 'should release broken bikes to the van' do
		# 	station.dock(broken_bike)
		# 	expect(station).to receive(:release).with(broken_bike).and_return(broken_bike)
		# 	van
		# end

	end	

