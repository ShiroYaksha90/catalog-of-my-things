require_relative '../classes/author'

describe Author do
  context 'Instantiating an Author object' do
    author = Author.new('FirstName', 'LastName')

    it 'Prints the author\'s first name' do
      expect(author.first_name).to eq 'FirstName'
    end

    it 'Prints the author\'s last name' do
      expect(author.last_name).to eq 'LastName'
    end

    it 'initializes with an empty collection of items' do
      expect(author.items).to be_empty
    end
  end
end
