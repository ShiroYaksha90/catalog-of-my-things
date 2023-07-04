require_relative 'menu'

class App
  def initialize
    @menu = Menu.new
  end

  def run
    @menu.show_options
  end
end
