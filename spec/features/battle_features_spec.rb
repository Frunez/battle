feature "Create players" do
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

feature 'attack players' do
  scenario "attack player two and get confirmation" do
    sign_in_and_play
    click_link("attack")
    expect(page).to have_content("Zeeshan attacked Frankie")
  end
end
