require 'date'

class Inventory
  attr_reader :date, :items, :all_items

  def initialize(date)
    @date = date
    @items = {}
    @all_items = []
  end

  def record_item(item_info)
    @all_items << item_info
    return @items = item_info if @all_items.count == 1

    # you just need to add the quantity
require "pry"; binding.pry

    @items.reduce(item_info[item_name]['quantity']) do |quantity, info_hash|
      quantity + info_hash['quantity']
    end


  end


end
