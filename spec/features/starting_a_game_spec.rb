require_relative '../spec_helper'

feature 'Starting a new game' do

  scenario 'I am asked to enter my name' do
    visit '/'
    click_link 'New game'
    expect(page).to have_content "Whats your name?"
  end

  scenario 'I\'m greeted by my name' do
    visit '/new_game'
    fill_in 'name', :with => 'P. Face'
    click_button 'Submit'
    expect(page).to have_content "Hello, P. Face. Welcome to a game of Battleships."
  end

  scenario 'I\'m warned if I don\'t enter a name' do
    visit '/new_game'
    click_button 'Submit'
    expect(page).to have_content "You didn't enter a name. If you don't enter a name you will be called Pooface."
  end

end