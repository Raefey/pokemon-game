feature 'User input' do
  scenario 'User can see input after submitting' do
    sign_in_and_play
    expect(page).to have_content 'Raefe vs Tom'
  end
end


feature 'Reducing HP' do
  scenario 'Player 2 HP to reduce by  10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Okay.'
    expect(page).to have_content 'Tom: 90HP'
    expect(page).not_to have_content 'Tom:100 HP'
  end
end
