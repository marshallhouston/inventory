require 'date'

class Inventory
  attr_reader :date
  
  def initialize(date)
    @date = date
  end

end
