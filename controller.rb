require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/game')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/play/:hand1/:hand2' do
  game = Game.new(params[:hand1].to_s, params[:hand2].to_s)
  if game.draw?
    erb(:draw)
  else
    @winner = game.winner
    @loser = game.loser
    @hand = game.winning_hand.capitalize
    erb(:result)
  end
end
