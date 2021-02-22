require 'rails_helper'
#As a user, When I visit the mechanics index page
RSpec.describe 'As a user, when I visit the mechanics index page', type: :feature do
  #I see a header saying “All Mechanics”
  it 'I see a header saying “All Mechanics”' do
    @mechanic = Mechanic.create!(name: "Jim", years_experience: 12)

    visit mechanics_path

    within('#header_checker-@mechanic.id') do
      expect(page).to have_content("All Mechanics")
    end
  end
end

# And I see a list of all mechanic’s names and their years of experience
# And I see the average years of experience across all mechanics
