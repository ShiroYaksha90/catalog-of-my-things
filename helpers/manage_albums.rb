require 'json'
require_relative 'input'
require_relative '../classes/music_album'
require_relative '../classes/genre'

def fetch_data(file)
  if File.exist?("db/#{file}.json")
    File.read("db/#{file}.json")
  else
    empty_json = [].to_json
    File.write("db/#{file}.json", empty_json)
    empty_json
  end
end

def load_albums(app)
  albums = JSON.parse(fetch_data('albums'))
  genres = JSON.parse(fetch_data('genres'))
  albums.each do |album|
    app.albums << MusicAlbum.new(album['album_name'], album['publish_date'], album['genre'], album['on_spotify'])
  end
  genres.each do |genre|
    app.genres << Genre.new(genre['name'])
  end
end

def save_album(app)
  serialzied_albums = []
  app.albums.each do |album|
    serialzied_albums << {
      'id' => album.id,
      'album_name' => album.name,
      'publish_date' => album.publish_date,
      'genre' => album.genre,
      'on_spotify' => album.on_spotify
    }
  end
  File.write('db/albums.json', JSON.pretty_generate(serialzied_albums))
end

def save_genre(app)
  serialzied_genres = []
  app.genres.each do |genre|
    serialzied_genres << {
      'name' => genre.name
    }
  end
  File.write('db/genres.json', JSON.pretty_generate(serialzied_genres))
end

def add_album(app)
  album_name = get_input('Enter album name ')
  albume_genre = get_input("Enter album's genre ")
  publish_date = get_input("Enter album's release date ")
  on_spotify = get_input('Is the album on Spotify? (y/n) ')
  on_spotify = on_spotify.downcase
  album = MusicAlbum.new(album_name, publish_date, albume_genre, on_spotify)
  app.albums << album
  genre = Genre.new(albume_genre)
  genre.add_item(album)
  app.genres << genre
  save_album(app)
  save_genre(app)
  p '#=> Album created successfully'
end

def list_albums(app)
  app.albums.each do |album|
    p '------------------------------'
    p "Album: #{album.name} "
    p "Album release date: #{album.publish_date} "
    p "Is it on spotify: #{album.on_spotify} "
  end
end

def list_genres(app)
  p '------------------------------'
  app.genres.each { |genre| p "Genre: #{genre.name}" }
  p '------------------------------'
end
