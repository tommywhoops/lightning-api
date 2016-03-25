require "rails_helper"

feature "the things listing page" do
  # let!(:thing) { FactoryGirl.create(:thing, title: "A Thingy") }

  context "when visiting the things page" do
    scenario "it renders the things template" do
      visit '/'
      click_button 'Things'

      expect(page).to have_content 'Here are the things!'
    end

    scenario "lists the things" do
      visit '/'
      binding.pry
      click_button 'Things'
      expect(page).to have_content 'Seed Thing 1'
    end

    scenario "lists 10 things" do
      visit '/'
      click_button 'Things'
      expect(page).to have_selector('p', count: 10)
    end
  end
end
