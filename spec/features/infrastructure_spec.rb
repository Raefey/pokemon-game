feature 'User input' do
  scenario 'User can see input after submitting and it puts Charmander against Squirtle' do
    visit('/')
    click_button('Charmander')
    expect(page).to have_content 'Charmander vs Squirtle'
  end

  scenario 'User can see input after submitting and it puts Bulbasaur against Charmander' do
    visit('/')
    click_button('Bulbasaur')
    expect(page).to have_content 'Bulbasaur vs Charmander'
  end

  scenario 'User can see input after submitting and it puts Squirtle against Bulbasaur' do
    visit('/')
    click_button('Squirtle')
    expect(page).to have_content 'Squirtle vs Bulbasaur'
  end

end


feature 'Reducing HP' do
  scenario 'Player 2 HP to reduce by  10' do
    visit('/')
    click_button('Charmander')
    click_button 'Ember'
    click_button 'Okay.'
    expect(page).not_to have_content 'Squirtle: 100 HP'
  end
end
