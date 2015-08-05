require('rspec')
require('rock_paper_scissors')
require('pry')

describe('String#rock_paper_scissors') do

  it("returns 'Player1 Wins!' if rock is the object and scissors is the argument") do
    expect("rock".rock_paper_scissors("scissors")).to(eq("Player1 Wins!"))
  end


  it("returns 'Player2 Wins!' if rock is the object and paper is the argument") do
    expect("rock".rock_paper_scissors("paper")).to(eq("Player2 Wins!"))
  end


  it("returns 'You got a tie!' if scissors is the object and paper is the argument") do
    expect("scissors".rock_paper_scissors("scissors")).to(eq("You got a tie!"))
  end
end
