require 'rails_helper'
#As a user, When I visit the mechanics index page
RSpec.describe 'As a user, when I visit the mechanics index page', type: :feature do
  before :each do
    @mechanic_1 = Mechanic.create!(name: "Jim", years_experience: 12)
    @mechanic_2 = Mechanic.create!(name: "Al", years_experience: 15)
    @mechanic_3 = Mechanic.create!(name: "Mary", years_experience: 17)
  end
  #I see a header saying “All Mechanics”
  it 'I see a header saying “All Mechanics' do

    visit mechanics_path

    within('#header_checker') do
      expect(page).to have_content("All Mechanics")
    end
  end

  it 'I see a list of all mechanic’s names and their years of experience' do

    visit mechanics_path

    within("#mechanic_details-#{@mechanic_1.id}") do
      expect(page).to have_content("Jim")
      expect(page).to have_content(12)
    end

    within("#mechanic_details-#{@mechanic_2.id}") do
      expect(page).to have_content("Al")
      expect(page).to have_content(15)
    end

    within("#mechanic_details-#{@mechanic_3.id}") do
      expect(page).to have_content("Mary")
      expect(page).to have_content(17)
    end
      # And I see the average years of experience across all mechanics
  end
end
