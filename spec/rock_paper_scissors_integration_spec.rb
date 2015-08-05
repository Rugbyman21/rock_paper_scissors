require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the rock paper scissors path', {:type => :feature}) do
  it('processes the entry of rock as object and scissors as argument') do
    visit('/')
    fill_in("player1", :with => 'rock')
    fill_in("player2", :with => 'scissors')
    click_button('Lets Play!')
    expect(page).to have_content("Player1 Wins!")
  end
end


describe('the rock paper scissors path', {:type => :feature}) do
  it('processes the entry of invalid entries as both argument and object') do
    visit('/')
    fill_in("player1", :with => 'rooooock')
    fill_in("player2", :with => 'scisssssssors')
    click_button('Lets Play!')
    expect(page).to have_content("Please only enter rock")
  end
end
