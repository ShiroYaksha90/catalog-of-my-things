class Genre
  attr_accessor :name, :items
  attr_reader :id

  def initilaize(name)
    @id = Random.rand(1..1000)
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    items.genre = self
  end
end
