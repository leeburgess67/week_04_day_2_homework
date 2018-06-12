require('sinatra')
require('sinatra/contrib/all')
require_relative('models/game')
require_relative('models/player1')
require_relative('models/player2')
also_reload('/models/*')


get '/' do
  erb(:home)
end

get '/start' do
  erb(:start_here)
end
get '/start/rock' do
  erb(:rock)
end
get '/start/paper' do
  erb(:paper)
end
get '/start/scissors' do
  erb(:scissors)
end

get '/start/rock/rock' do
  erb(:game_result)
end
get '/start/rock/paper' do
  erb(:game_result)
end
get '/start/rock/scissors' do
  erb(:game_result)
end
get '/start/paper/paper' do
  erb(:game_result)
end
get '/start/paper/rock' do
  erb(:game_result)
end
get '/start/paper/scissors' do
  erb(:game_result)
end
get '/start/scissors/scissors' do
  erb(:game_result)
end
get '/start/scissors/rock' do
  erb(:game_result)
end
get '/start/scissors/paper' do
  erb(:game_result)
end

get '/start/:opt1/:opt2/result' do
  player_1_choice = params[:opt1]
  player_2_choice = params[:opt2]
  @game = Game.new(player_1_choice, player_2_choice)
  @result = @game.play()
  erb(:game_result)
end























#
