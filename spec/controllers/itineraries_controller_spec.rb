require 'rails_helper'

RSpec.describe ItinerariesController, :type => :controller do

	describe "GET index" do
		describe "Itinerary retrieval" do
			it "asks the Itinerary model to get a list of all cities" do
				expect(Itinerary).to receive(:all)
			end
		end
	end
end
