

RSpec.feature "Create players", :type => :feature do
  scenario "creates 2 players" do
    visit "/"
    fill_in :player_1, with: "Zeeshan"
    fill_in :player_2, with: "Frankie"
    click_button "submit"
    expect(page).to have_content("Zeeshan vs. Frankie")
  end
end
