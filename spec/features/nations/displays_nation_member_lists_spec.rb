require 'rails_helper'

# As a user,
# When I visit "/"
# And I Select "Fire Nation" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"
# Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
# And I should see a list with the detailed information for the first 25 members of the Fire Nation.
# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies or "None"
# - The list of enemies or "None"
# - Any affiliations that the member has

RSpec.describe 'As a user' do
  describe 'When I visit the root path' do
    it "Should have a select field for nation" do
      visit "/"

      expect(page).to have_select(:nation)
    end
  end

  describe 'When I select "Fire Nation" from the nation field and click submit' do
    it 'should take me to the "/search" page' do
      visit "/"
      page.select("Fire Nation", :from => :nation)
      click_button('Search For Members')

      expect(current_path).to eq("/search")
    end
  end

  describe 'Once on the search page for Fire Nation members' do
    it "Should list the total number of people in the Fire Nation" do
      visit "/"
      page.select("Fire Nation", :from => :nation)
      click_button('Search For Members')
      expect(page).to have_content("Name", count: 25)
      expect(page).to have_content("Allies", count: 25)
      expect(page).to have_content("Enemies", count: 25)
      expect(page).to have_content("Affiliation", count: 25)
      expect(page).to have_content("Total Members of Fire nation: 97")
    end
  end

end
