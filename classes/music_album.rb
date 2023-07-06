require_relative '../item'

class MusicAlbum < Item
  attr_reader :id
  attr_accessor :name, :on_spotify, :genre, :publish_date

  def initialize(name, publish_date, genre, on_spotify)
    super(publish_date)
    @on_spotify = on_spotify
    @name = name
    @genre = genre
  end

  private

  def can_be_archived?(item)
    super && on_spotify == 'y'
  end
end
