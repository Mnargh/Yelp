require 'rails_helper'

feature "Index page" do
    scenario "see the restaurant home page" do
      visit "/"
      expect(page).to have_content "Restaurants"
    end

    


end
