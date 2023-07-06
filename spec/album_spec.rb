require_relative '../classes/music_album'

describe 'Unit tests for MusicAlbum class' do
  album = MusicAlbum.new('Get rich or die trying', '22-2-2002', 'Rap', 'y')

  it 'should return an album name' do
    expect(album.name).to eq('Get rich or die trying')
  end

  it 'should return an album publish date' do
    expect(album.publish_date).to eq('22-2-2002')
  end

  it 'should return an album genre' do
    expect(album.genre).to eq('Rap')
  end

  it 'should return if album on spotify or not' do
    expect(album.on_spotify).to eq('y')
  end
end
