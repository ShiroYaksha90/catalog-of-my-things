require_relative '../classes/games'

describe Game do
  context 'Instantiating a game object' do
    game = Game.new('2020-05-26', true, '2023-07-05')

    it 'Prints the publish date' do
      expect(game.publish_date).to eq '2020-05-26'
    end

    it 'Prints the multiplayer boolean' do
      expect(game.multiplayer).to eq true
    end

    it 'Prints the last played date' do
      expect(game.last_played_at).to eq '2023-07-05'
    end
  end
end
