require 'spec_helper'
require 'capybara'
require 'capybara/rspec'

feature 'Hitpoints' do
  scenario 'User can see the hitpoints of player 2' do
    visit('/play')
    expect(page).to have_css('div#loadbar.w3-container')
  end
end
