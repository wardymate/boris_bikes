require_relative 'bike_container'

class Van

	include BikeContainer

	def travel_to(destination)
		destination
	end
		
end