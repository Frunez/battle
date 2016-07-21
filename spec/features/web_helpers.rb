def sign_in_and_play
  visit "/"
  fill_in :player_1, with: "Zeeshan"
  fill_in :player_2, with: "Frankie"
  click_button "submit"
end
