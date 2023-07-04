require 'date'

class Item
  attr_accessor :publish_date, :archived
  attr_reader :id, :genre, :author, :label

  def initialize(id = Random.rand(1..1000))
    @id = id
    @genre = nil
    @author = nil
    @source = nil
    @lable = nil
    @publish_date = nil
    @archived = false
  end

  def move_to_archived
    @archived = true if can_be_archived?
  end

  def can_be_archived?
    true if (Date.today.year - Date.parse(@publish_date).year) > 10
  end
end
