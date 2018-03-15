feature 'switching turns' do
  feature 'current turn' do
    scenario 'first turn'do
    sign_in_and_play
    expect(page).to have_content "Raefe's turn"
  end

    scenario 'second turn' do
      sign_in_and_play
      click_button "Attack"
      click_button "Okay."
      expect(page).to have_content "Tom's turn"
      expect(page).not_to have_content "Raefe's turn"
    end
  end
end
