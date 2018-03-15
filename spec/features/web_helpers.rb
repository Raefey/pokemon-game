def sign_in_and_play
  visit('/')
    fill_in 'Player_1_name', with: 'Raefe'
    fill_in 'Player_2_name', with: 'Tom'
    click_button 'Submit'
  end
