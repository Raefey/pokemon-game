require 'sinatra/base'
require_relative './player.rb'
require_relative './game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:Player_1_name])
    player_2 = Player.new(params[:Player_2_name])
    $game = Game.new(player_1, player_2)
    redirect('/play')
  end

  get '/play' do
    @game = $game
    session[:message] = "#{@player_1_name} vs #{@player_2_name}"
    @message = session[:message]
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.opponent)
    redirect('/game_over') if @game.game_over?(@game.opponent)
    @game.change_turns
    erb :attack
  end

  get '/game_over' do
    @game = $game
    erb(:game_over)
  end

  post '/heal' do
    @game = $game
    @game.player_1.heal
    puts @game.player_1.hitpoints
    redirect('/play')
  end

  run! if app_file == $0
end
