require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissors')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end

get('/singleplayer') do
  erb(:singleplayer)
end

  get('/score') do
    @player1 = params.fetch("player1")
    @player2 = params.fetch("player2")
    #binding.pry
    @score = @player1.rock_paper_scissors(@player2)

    erb(:score)
  end


  get('/singlescore') do
    @player1 = params.fetch("player1")
    @score = @player1.rock_paper_scissors(@player_comp)

    erb(:singlescore)
  end
