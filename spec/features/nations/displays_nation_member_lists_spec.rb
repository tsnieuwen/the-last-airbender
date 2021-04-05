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
    # it 'Should have a button to create viewing party' do
    #   UserParty.destroy_all
    #   Party.destroy_all
    #   Movie.destroy_all
    #   user = User.create(
    #     email: 'foo@bar.com',
    #     password: 'test'
    #   )
    #   expected = Movie.all
    #   expect(expected).to be_empty
    #   allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    #
    #   VCR.use_cassette('single_movie_details2000') do
    #   visit movie_path("#{Figaro.env.movie_details}")
    #
    #   expected2 = Movie.all
    #   expect(expected2).not_to be_empty
    #   expect(page).to have_button("Create Viewing Party for The Lord of the Rings")
    #   expect(page).to have_content("The Lord of the Rings")
    #   expect(page).to have_content("6.5")
    #   expect(page).to have_content("Adventure")
    #   expect(page).to have_content("Animation")
    #   expect(page).to have_content("Fantasy")
    #   expect(page).to have_content("The Fellowship of the Ring embark")
    #   expect(page).to have_content("Total Reviews: 0")
    #   expect(page).to have_content("Christopher Guard as Frodo")
    #   expect(page).to have_content("Elves")
    #   expect(page).to have_content("Dwarf")
    #   expect(page).to have_content("Hobbit")
    #   end
  #   end
  # end
end
