require "minitest/autorun"
require "minitest/pride"
require './lib/inventory'
require 'date'

class InventoryTest < Minitest::Test

  def setup
     @inventory = Inventory.new(Date.new(2017, 9, 18))
  end

  def test_it_exists
    assert_instance_of Inventory, @inventory
  end

  def test_it_has_a_date
    assert_instance_of Date, @inventory.date
  end

  def test_it_starts_with_empty_items
    assert_instance_of Hash, @inventory.items
    assert @inventory.items.empty?
  end

  def test_it_can_record_items
    @inventory.record_item({"shirt" => {"quantity" => 50, "cost" => 15}})
    @inventory.items


    assert_includes ["quantity" => 50, "cost" => 15], @inventory.items['shirt']
    assert_equal "shirt", @inventory.items.keys.first
    assert_equal 50, @inventory.items['shirt']['quantity']
    assert_equal 15, @inventory.items['shirt']['cost']
  end

  def test_it_can_record_different_item
    @inventory.record_item({"shirt" => {"quantity" => 50, "cost" => 15}})
    @inventory.record_item({"shirt" => {"quantity" => 10, "cost" => 15}})
    @inventory.items
    assert_equal "shirt", @inventory.items.keys.first
    assert_equal 60, @inventory.items['shirt']['quantity']
    assert_equal 15, @inventory.items['shirt']['cost']
  end
end
