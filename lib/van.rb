require_relative 'bike_container'

class Van

	include BikeContainer

	def ask_for_bikes(other_bike_container)
		other_bike_container.available_bikes
	end


		
end