require_relative '../classes/games'

@games = []

def list_games
  puts 'GAMES'
  @games.each do |game|
    puts "Publish Date: #{game.publish_date}, Multiplayer: #{game.multiplayer}, Last Played: #{game.last_played_at}"
  end
end