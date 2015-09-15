require_relative '../spec_helper'

feature 'Starting a new game' do
  scenario 'I am asked to enter my name' do
    visit '/'
    click_link 'New game'
    expect(page).to have_content "Whats your name?"
  end
  
end