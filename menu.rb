require_relative 'helpers/manage_books'

class Menu
  def manage_options(int_num, app)
    case int_num
    when 1
      puts '---> List All Books <-----'
      list_books(app)

    when 4
      puts '---> List All Games <-----'
      #list_books(app) 

    when 6
      puts '---> List All Labels <-----'
      list_labels(app)
    
    when 7
      puts '---> List All Authors <-----'
      #list_labels(app) 

    when 9
      puts '---> Add new book <-----'
      add_book(app)
    
    when 12
      puts '---> Add a game <-----'
      #add_book(app) 

    when 0
      puts 'Quit...!'
      exit
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
