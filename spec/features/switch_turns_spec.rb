feature 'switching turns' do
  feature 'current turn' do
    scenario 'first turn'do
    visit('/')
    click_button('Charmander')
    expect(page).to have_content "Charmander's turn"
  end

    scenario 'second turn' do
      visit('/')
      click_button('Charmander')
      click_button "Ember"
      click_button "Okay."
      expect(page).to have_content "Squirtle's turn"
      expect(page).not_to have_content "Charmander's turn"
    end
  end
end
