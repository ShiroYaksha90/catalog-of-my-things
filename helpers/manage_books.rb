require 'json'
require_relative 'input'
require_relative '../classes/book'
require_relative '../classes/label'

def fetch_data(file)
  if File.exist?("db/#{file}.json")
    File.read("db/#{file}.json")
  else
    empty_json = [].to_json
    File.write("db/#{file}.json", empty_json)
    empty_json
  end
end

def load_books(app)
  books = JSON.parse(fetch_data('books'))
  labels = JSON.parse(fetch_data('labels'))

  books.each do |book|
    app.books << Book.new(book['publisher'], book['cover_state'], book['published_at'])
  end

  labels.each do |label|
    app.labels << Label.new(label['title'], label['color'])
  end
end

def save_book(app)
  serialzied_books = []

  app.books.each do |book|
    serialzied_books << {
      'id' => book.id,
      'publisher' => book.publisher,
      'published_at' => book.publish_date,
      'cover_state' => book.cover_state
    }
  end

  File.write('db/books.json', JSON.pretty_generate(serialzied_books))
end

def save_label(app)
  serialzied_labels = []

  app.labels.each do |label|
    serialzied_labels << {
      'title' => label.title,
      'color' => label.color
    }
  end

  File.write('db/labels.json', JSON.pretty_generate(serialzied_labels))
end

def add_book(app)
  title = get_input('=> Enter the book name: ')
  color = get_input('=> Enter the book color: ')
  cover_state = get_input('=> Enter the book cover: ')
  publisher = get_input('=> Enter the book publisher: ')
  published = get_input('=> Enter published date: ')

  book = Book.new(publisher, cover_state, published)
  app.books << book
  label = Label.new(title, color)
  label.add_item(book)
  app.labels << label
  save_book(app) # saving books | updates
  save_label(app) # saving labels | updates
  puts '#=> Book created succesfully!'
end

def list_books(app)
  app.books.each do |book|
    puts '------------------------------'
    puts "Publisher: #{book.publisher} "
    puts "Cover Status: #{book.cover_state} "
    puts "published on: #{book.publish_date}"
    puts '------------------------------'
  end
end

def list_labels(app)
  puts '------------------------------'
  app.labels.each { |label| puts "Title: #{label.title} color: #{label.color}" }
  puts '------------------------------'
end
