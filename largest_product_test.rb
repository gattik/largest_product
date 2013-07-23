require_relative "./largest_product"
require 'minitest/autorun'

class TestLargestProduct < Minitest::Unit::TestCase

  def setup
    @test_case = LargestProduct.new
  end

  def test_class_not_nil
    refute_nil @test_case
  end

  def test_function_defined
    refute_nil @test_case.find_largest_product("123", 1)
  end

  def test_function_accepts_input
    refute_nil @test_case.find_largest_product("12345", 1) 
  end

  def test_function_returns_largest_product
    assert_equal 23520, 
    @test_case.find_largest_product("73167176531330624919225119674426574742355349194934", 6)
  end



end