require('rspec')
require('title_case')

describe('String#rock_paper_scissors') do

  it("returns true if rock is the object and scissors is the argument") do
  expect("rock".beats?("scissors")).to(eq(true))
  end

end
