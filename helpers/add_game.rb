require_relative '../classes/games'
require_relative '../classes/author'
require_relative '../menu'
require_relative '../db/preserve_game_data'

@games = []
@authors = []

def add_game(app)
  # get the values for author
  puts 'First name of the game author:'
  first_name = gets.chomp

  puts 'Last name of the game author:'
  last_name = gets.chomp

  # get the values for game
  puts 'Publish date of the game:'
  publish_date = gets.chomp

  puts 'Is it a multiplayer game? [Y/N]'
  multiplayer = gets.chomp.upcase
  case multiplayer
  when 'Y'
    multiplayer = true
  when 'N'
    multiplayer = false
  end

  puts 'What is the last played date? [YYYY-MM-DD]'
  last_played_at = DateTime.parse(gets.chomp).to_date

  # create the game
  game = Game.new(publish_date, multiplayer, last_played_at)
  app.games << game
  save_game(publish_date, multiplayer, last_played_at)

  # create the author
  author = Author.new(first_name, last_name)
  app.authors << author
  save_author(first_name, last_name)

  puts 'GAME AND AUTHOR CREATED SUCCESSFULLY'
end
