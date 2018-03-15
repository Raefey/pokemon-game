require 'sinatra/base'
require_relative './player.rb'
require_relative './game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    Game.create_instance(Player.new(params[:pokemon]), Player.new('Blastoise'))
    redirect('/play')
  end

  get '/play' do
    @game = Game.return_instance
    session[:message] = "#{@player_1_name} vs #{@player_2_name}"
    @message = session[:message]
    erb :play
  end

  get '/attack' do
    @game = Game.return_instance
    @game.attack(@game.opponent)
    redirect('/game_over') if @game.game_over?(@game.opponent)
    @game.change_turns
    erb :attack
  end

  get '/game_over' do
    @game = Game.return_instance
    erb(:game_over)
  end

  post '/heal' do
    @game = Game.return_instance
    @game.player_1.heal
    puts @game.player_1.hitpoints
    redirect('/play')
  end

  run! if app_file == $0
end
