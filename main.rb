require_relative 'menu'
require_relative 'app'

def main()
  app = App.new
  app.run(app)
end

main
