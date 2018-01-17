require 'rails_helper'

feature "Index page" do
    scenario "see the restaurant home page" do
      visit "/"
      expect(page).to have_content "Restaurants"
    end

    scenario "A user can add a new restaurant" do
      visit "/restaurants/new"
      fill_in "restaurant[name]", with: "test name"
      fill_in "restaurant[description]", with: "test description"
      click_on "Save Restaurant"
      expect(page).to have_content "test name"
    end

    scenario "A user can delete a new restaurant" do
      visit "/restaurants/new"
      fill_in "restaurant[name]", with: "test name"
      fill_in "restaurant[description]", with: "test description"
      click_on "Save Restaurant"
      visit '/'
      click_link('Destroy')
      expect(page).not_to have_content "test name"
    end

    scenario "A user can edit a new restaurant" do
      visit "/restaurants/new"
      fill_in "restaurant[name]", with: "test name"
      fill_in "restaurant[description]", with: "test description"
      click_on "Save Restaurant"
      visit '/'
      click_link('Edit')
      fill_in 'restaurant[name]', with: "test name 2"
      click_on 'Update Restaurant'
      expect(page).to have_content "test name 2"
    end

end
