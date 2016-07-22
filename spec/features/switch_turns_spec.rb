feature "switch turns" do
  context 'seeing the current turn' do
    scenario 'at start of the game' do
      sign_in_and_play
      expect(page).to have_content "It's Zeeshan's turn to attack"
    end
    scenario 'after player one attacks' do
      sign_in_and_play
      click_link("attack")
      expect(page).to have_content "It's Frankie's turn to attack"
    end
  end
end
