require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissors')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end


  get('/score') do
    @player1 = params.fetch("player1").rock_paper_scissors()
    @player2 = params.fetch("player2").rock_paper_scissors()
    erb(:score)
  end
