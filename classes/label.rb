class Label
  attr_accessor :title, :color
  attr_reader :id, :items

  def initialize(title, color)
    @id = Random.rand(1..1000)
    @items = []
    @title = title
    @color = color
  end

  def add_item(item)
    @items << item
    item.label = self
  end
end
