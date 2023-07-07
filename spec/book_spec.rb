require_relative '../classes/book'

describe 'Unit tests for Book class' do
  book = Book.new('Microverse', 'TDD', '2023-07-06')

  it 'should return book with publisher' do
    expect(book.publisher).to eq('Microverse')
  end

  it 'should return book with cover_state' do
    expect(book.cover_state).to eq('TDD')
  end

  it 'should return book with publish_date' do
    expect(book.publish_date).to eq('2023-07-06')
  end
end
