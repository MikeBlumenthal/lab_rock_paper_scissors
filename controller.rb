require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/game')
also_reload('./models/*')

get '/' do
end

get '/play/:hand1/:hand2' do
  game = Game.new(params[:hand1].to_s, params[:hand2].to_s)
  return "#{game.winner.capitalize} wins!"
end
