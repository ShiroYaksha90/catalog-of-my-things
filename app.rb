require_relative 'menu'
require_relative 'helpers/manage_books'
require_relative 'helpers/manage_albums'
require_relative 'helpers/add_game'
require_relative 'helpers/list_author'
require_relative 'helpers/list_games'
require_relative 'db/preserve_game_data'

class App
  attr_accessor :books, :labels, :albums, :genres, :games, :authors

  def initialize
    @books = []
    @labels = []
    @games = []
    @authors = []
    @albums = []
    @genres = []
    @menu = Menu.new
  end

  def load_data(app)
    puts '---> Loading data ... <---'
    load_books(app)
    load_games(app)
    load_author(app)
    load_albums(app)
  end

  def save_exit(app)
    puts '---> Saving states <---'
    save_book(app)
    save_album(app)
    save_games(app)
  end

  def run(app)
    load_data(app)
    loop do
      @menu.show_options
      puts '------------------------------'
      option = get_int('Choose: ')
      puts '------------------------------'
      if option.zero?
        p 'Quit....!!'
        exit
      end
      @menu.manage_options(option, app)
      puts ''
      puts '------------------------------'
    end
    save_exit(app)
  end
end
