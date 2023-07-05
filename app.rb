require_relative 'menu'
require_relative 'helpers/manage_books'
require_relative 'helpers/add_game'

class App
  attr_accessor :books, :labels, :games

  def initialize
    @books = []
    @labels = []
    @games = []
    @authors = []
    @menu = Menu.new
  end

  def load_data(app)
    puts '---> Loading data ... <---'
    load_books(app)
  end

  def save_exit(app)
    puts '---> Saving states <---'
    save_book(app)
  end

  def run(app)
    load_data(app)
    loop do
      @menu.show_options
      puts '------------------------------'
      option = get_int('Choose: ')
      puts '------------------------------'
      @menu.manage_options(option, app)
      puts ''
      puts '------------------------------'
    end
    save_exit(app)
  end
end
