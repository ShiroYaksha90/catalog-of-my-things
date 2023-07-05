def get_input(title)
  print title
  input_data = gets.chomp
  puts ''
  input_data
end

def get_int(title)
  print title
  input_data = gets.chomp
  puts ''
  input_data.to_i
end
