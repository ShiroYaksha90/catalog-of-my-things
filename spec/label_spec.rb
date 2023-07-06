require_relative '../classes/label'
require_relative '../classes/book'

describe 'Unit tests for Label class' do
  label = Label.new('Rails', 'red')
  book = Book.new('Microverse', 'TDD', '2023-07-06')

  it 'should return label with its title' do
    expect(label.title).to eq('Rails')
  end

  it 'should return label with its color' do
    expect(label.color).to eq('red')
  end

  it 'should be able to add new item' do
    expect(label.items.length).to eq(0)
    label.add_item(book)
    expect(label.items.length).to eq(1)
  end
end
