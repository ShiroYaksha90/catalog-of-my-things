require 'json'
require_relative '../classes/games'
require_relative '../classes/author'
require_relative '../app'

def load_games(app)
  return 'There is nothing saved yet.' unless File.exist?('./db/games.json')

  games = JSON.parse(File.read('./db/games.json'))

  games.each do |game|
    app.games << Game.new(game['publish_date'], game['multiplayer'], game['last_played_at'])
  end
end

def load_author(app)
  return 'There is nothing saved yet.' unless File.exist?('./db/authors.json')

  authors = JSON.parse(File.read('./db/authors.json'))

  authors.each do |author|
    app.authors << Author.new(author['first_name'], author['last_name'])
  end
end

def save_game(publish_date, multiplayer, last_played_at)
  obj = {
    publish_date: publish_date,
    multiplayer: multiplayer,
    last_played_at: last_played_at
  }

  game = if File.exist?('./db/games.json')
           JSON.parse(File.read('./db/games.json'))
         else
           []
         end

  game << obj

  File.open('./db/games.json', 'w') do |file|
    file.write(JSON.pretty_generate(game))
  end
end

def save_author(first_name, last_name)
  obj = {
    first_name: first_name,
    last_name: last_name
  }

  author = if File.exist?('./db/authors.json')
             JSON.parse(File.read('./db/authors.json'))
           else
             []
           end

  author << obj

  File.open('./db/authors.json', 'w') do |file|
    file.write(JSON.pretty_generate(author))
  end
end
