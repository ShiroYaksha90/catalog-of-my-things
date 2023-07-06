require_relative 'helpers/manage_books'
require_relative 'helpers/add_game'
require_relative 'helpers/list_author'
require_relative 'helpers/list_games'
require_relative 'helpers/manage_albums'

def list_all_books(app)
  puts '---> List All Books <-----'
  list_books(app)
end

def list_all_albums(app)
  p '---> List All Albums <-----'
  list_albums(app)
end

def list_all_genres(app)
  p '---> List All Genres <-----'
  list_genres(app)
end

def list_all_labels(app)
  puts '---> List All Labels <-----'
  list_labels(app)
end

def add_new_book(app)
  puts '---> Add new book <-----'
  add_book(app)
end

def add_new_album(app)
  puts '---> Add new album <-----'
  add_album(app)
end
def list_all_games(app)
  puts '---> List All Games <-----'
  list_games(app)
end

def list_all_authors(app)
  puts '---> List All Authors <-----'
  list_authors(app)
end

def add_a_game(app)
  puts '---> Add a game <-----'
  add_game(app)
end

class Menu
  def manage_options(int_num, app)
    case int_num
    when 1 then list_all_books(app)
    when 2 then list_all_albums(app)
      
    when 4 then list_all_games(app)
      
    when 5 then list_all_genres(app)
    when 6 then list_all_labels(app)
      
    when 7 then list_all_authors(app)
     
    when 9 then add_new_book(app)
    when 10 then add_new_album(app)
      
    when 12 then add_a_game(app)
      
    else
      puts 'invalid!'
    end
  end

  def show_options
    puts '1: List all books'
    puts '2: List all music albums'
    puts '3: List all movies'
    puts '4: List all games'
    puts '5: List all genres (e.g \'Comedy\', \'Thriller\')'
    puts '6: List all labels (e.g. \'Gift\', \'New\')'
    puts '7: List all authors (e.g. \'Stephen King\')'
    puts '8: List all sources (e.g. \'From a friend\', \'Online shop\')'
    puts '9: Add a book'
    puts '10: Add a music album'
    puts '11: Add a movie'
    puts '12: Add a game'
    puts '0: Exit'
  end
end
