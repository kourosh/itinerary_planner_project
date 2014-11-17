require 'rails_helper'

feature "ItineraryManagements", :type => :feature do
	scenario "Visiting the home page" do
		itinerary = create(:itinerary)

		departure = create(:departure)

		return_date = create (:return_date)

		visit root_path

		expect(page).to have_text(itinerary.name)
		expect(page).to have_text(departure.date)
		expect(page).to have_text(return_date.date)
	end
 end
