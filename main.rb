require_relative 'menu'
require_relative 'app'
# require_relative './helpers/add_game'

def main()
  app = App.new
  app.run(app)
end

main
