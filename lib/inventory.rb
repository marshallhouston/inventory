require 'date'

class Inventory
  attr_reader :date, :items

  def initialize(date)
    @date = date
    @items = {}
  end

  def record_item(item_info)
    # @items.merge!(item_info){|key, oldval, newval| oldval.merge!(newval){|key, oldval, newval| oldval + newval}}
    all_item_info = []
    all_item_info << item_info
    @items = all_item_info.first if all_item_info.count == 1
  end


end
