require 'date'

class Item
  attr_reader :id, :publish_date, :archived
  attr_accessor :genre, :author, :label

  def initialize(publish_date = nil)
    @id = Random.rand(1..1000)
    @genre = nil
    @author = nil
    @source = nil
    @label = nil
    @publish_date = publish_date
    @archived = false
  end

  def move_to_archived
    @archived = true if can_be_archived?
  end

  def can_be_archived?
    true if (Date.today.year - Date.parse(@publish_date).year) > 10
  end
end
