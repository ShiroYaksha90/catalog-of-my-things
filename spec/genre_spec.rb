require_relative '../classes/genre'
require_relative '../classes/music_album'

describe('Unit tests for Genre class') do
  genre = Genre.new('Rap')
  album = MusicAlbum.new('Get rich or die trying', '22-2-2002', 'Rap', 'y')

  it 'Should return a genre name' do
    expect(genre.name).to eq('Rap')
  end

  it 'Should be able to add item' do
    expect(genre.items.length).to eq(0)
    genre.add_item(album)
    expect(genre.items.length).to eq(1)
  end
end
