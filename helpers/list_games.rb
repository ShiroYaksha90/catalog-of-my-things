require_relative '../classes/games'

def list_games(app)
  app.games.each do |game|
    puts '------------------------------'
    puts "Publish Date: #{game.publish_date} "
    puts "Multiplayer: #{game.multiplayer} "
    puts "Last Played: #{game.last_played_at}"
    puts '------------------------------'
  end
end
