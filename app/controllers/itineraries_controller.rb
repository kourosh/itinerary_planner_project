class ItinerariesController < ApplicationController

	def index
		@itineraries = Itinerary.all
	end

	
	def create
		@itinerary = Itinerary.create params.require(:itinerary).permit(:name, :origin, :dep_date, :destination, :ret_date)
	end

	# Metod to create a new itinerary. User will input 
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
	end

	def destroy
	end

end
