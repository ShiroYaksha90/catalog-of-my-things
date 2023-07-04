require_relative 'item'

class Book < Item
  attr_reader :id
  attr_accessor :publisher, :cover_state

  def initialize(publisher, cover_state)
    super(id, archived)
    @publisher = publisher
    @cover_state = cover_state
  end

  private

  def can_be_archived?(item)
    super || cover_state == 'bad'
  end
end
