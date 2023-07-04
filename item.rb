class Item
  attr_accessor :publish_date, :archived
  attr_reader :id, :genre, :author, label

  def initialize()
    @id = Random.rand(1..1000)
  end
end
