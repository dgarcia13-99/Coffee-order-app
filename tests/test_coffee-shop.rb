require 'minitest/autorun'
require './coffee-shop'

class TestCoffeeShop < Minitest::Test
  #I utilized assertions from the Ruby-doc resource: https://ruby-doc.org/3.2.2/gems/minitest/Minitest/Assertions.html
  def test_initialization
    #This test checks that a CoffeeShop instance is initialized correctly 
    #(i.e. CoffeeShop is creating an object of class 'CoffeeShop')
    coffee_shop=CoffeeShop.new
    assert_instance_of CoffeeShop, coffee_shop, "Not an instance of CoffeeShop"
  end

  def test_initialize
    #This test checks that a Coffee instance is initialized correctly
    #(i.e. CoffeeShop is creating an object of class 'CoffeeShop' which is initializing
    #an object of class Coffee called 'final_order')
    coffee_shop = CoffeeShop.new
    assert_instance_of(Coffee, coffee_shop.instance_variable_get(:@final_order), "Not an instance of Coffee")
  end
  

end
