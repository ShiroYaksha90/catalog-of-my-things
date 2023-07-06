require_relative '../classes/author'

def list_authors(app)
  puts '------------------------------'
  app.authors.each { |author| puts "First Name: #{author.first_name}, Last Name: #{author.last_name}" }
  puts '------------------------------'
end
