require 'sinatra/base'
require_relative 'water'
require_relative 'ship'
require_relative 'player'
require_relative 'game'
require_relative 'cell'
require_relative 'board'

class BattleshipsWeb < Sinatra::Base

  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  get '/new_game' do
    erb :name
  end

  get '/start_game' do
    @name = params[:name]
    board = Board.new(Cell)
    @grid = board.html_grid
    erb :start_game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
