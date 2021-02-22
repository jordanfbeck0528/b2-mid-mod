
require 'rails_helper'
#As a user, When I visit the mechanics index page
RSpec.describe 'As a user, when I visit a mechanic show page', type: :feature do
  before :each do
    @mechanic_1 = Mechanic.create!(name: "Jim", years_experience: 12)
    @ride_1 = Ride.create!(name: "The Demon", thrill_rating: 7, open: false)
    @ride_2 = Ride.create!(name: "Drop Zone", thrill_rating: 9, open: true)
    @ride_mechanic_1 = RideMechanic.create!(ride_id: @ride_1.id, mechanic_id: @mechanic_1.id)
  end
  #I see a header saying “All Mechanics”
  it 'I see their name, years of experience, and the
  names of all rides they’re working on' do

    visit mechanic_path(@mechanic_1)
    # require "pry"; binding.pry
save_and_open_page
    within('#mechanic_info') do
      expect(page).to have_content("@mechanic_1.name")
      expect(page).to have_content("@mechanic_1.years_experience")
      expect(page).to have_content("@mechanic.rides_in_progress")
    end
  end
end

# And I only see rides that are open
# And the rides are listed by thrill rating in
# descending order (most thrills first)
