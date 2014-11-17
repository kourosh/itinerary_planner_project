class ItinerariesController < ApplicationController

	def index
		@itineraries = Itinerary.all
		@waypoints = Waypoint.all
	end

	# Method to create a new itinerary. Works in 
	# conjunction with new method below.
	def create
		@itinerary = Itinerary.create(itin_params)
	
		redirect_to "/"
	end

	# Method to create a new itinerary. User will input 
	# the data on app/views/itineraries/new.html.erb
	def new
		@itinerary = Itinerary.new
	end

	def edit
		@itinerary = Itinerary.find params[:id]
	end

	def show
		@itinerary = Itinerary.find params[:id]
	end

	def update
		itinerary = Itinerary.find(params[:id])
			itinerary.update(itin_params)
			redirect_to "/"
	end

	def destroy
	end


	private
		def itin_params
			params.require(:itinerary).permit(:name, :origin, :dep_date, :destination, :ret_date)
		end
end
