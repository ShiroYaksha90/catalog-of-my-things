require_relative 'menu'
require_relative 'helpers/manage_books'
require_relative 'helpers/manage_albums'

class App
  attr_accessor :books, :labels, :albums, :genres

  def initialize
    @books = []
    @labels = []
    @albums = []
    @genres = []
    @menu = Menu.new
  end

  def load_data(app)
    puts '---> Loading data ... <---'
    load_books(app)
    load_albums(app)
  end

  def save_exit(app)
    puts '---> Saving states <---'
    save_book(app)
    save_album(app)
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
