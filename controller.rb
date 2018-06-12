require('sinatra')
require('sinatra/contrib/all')
require_relative('models/game')
also_reload('/models/*')


get '/' do
  erb(:home)
end

get '/about-the-game' do
  erb(:about_the_game)
end

get '/play/:opt1/:opt2' do
  game=Game.new(params[:opt1], params[:opt2])
  @result=game.play()
  erb(:game_result)
end























#
