require "minitest/autorun"
require "minitest/pride"
require './lib/inventory'
require 'date'

class InventoryTest < Minitest::Test

  def setup
     inventory = Inventory.new(Date.new(2017, 9, 18))
  end
  def test_it_exists
    assert_instance_of Inventory, Inventory.new(Date.new(2017, 9, 18))
  end

  def test_case_name

  end

end