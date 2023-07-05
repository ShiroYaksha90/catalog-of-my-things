require_relative 'music_album'
require_relative 'genre'
require_relative '../item'
class ListAlbumsAndGenre

    attr_accessor :music_albums, :genre

    def initialize
        @genre = []
        @music_albums = []
    end

    def create_music_album
            render_message('Enter album name')
        album_name = gets.chomp
        render_message("'Enter album's genre")
        albume_genre = gets.chomp
        render_message("Enter album's release date")
        publish_date = gets.chomp
        render_message("Is the album on Spotify? (y/n)")
        on_spotify = gets.chomp.downcase
        if on_spotify == 'y' 
            on_spotify = true
            else on_spotify = false
            end
        music_album = MusicAlbum.new(album_name, publish_date, albume_genre,on_spotify)
        input_genre = Genre.new(albume_genre)
        input_genre.add_item(music_album)
        @music_albums << music_album
        render_message("The album: #{music_album.name} was added successfully")
        render_message("Genre: #{input_genre.name} ")
        render_message("publish year: #{music_album.publish_date}")
        render_message("Spotify: #{music_album.on_spotify}")
    end

    def render_message (message)
        p '--' * 10
        p message
        p '--' * 10
    end
end