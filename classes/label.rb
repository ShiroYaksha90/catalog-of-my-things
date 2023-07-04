class label
  attr_accessor :title, :color
  attr_reader :id, :items

  def initialize(title, color)
    @id = Random.rand(1..1000)
    @items = []
    @title = title
    @color = color
  end

  def add_item(item)
    @item << item
    items.label = self
  end
end
