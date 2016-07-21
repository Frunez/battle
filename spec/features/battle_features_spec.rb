

RSpec.feature "Create players", :type => :feature do
  scenario "creates 2 players" do
    sign_in_and_play
    expect(page).to have_content("Zeeshan vs. Frankie")
  end
end

feature "Hitpoints" do
  scenario "view player health" do
    sign_in_and_play
    expect(page).to have_content("Frankie has 100hp")
  end
end
