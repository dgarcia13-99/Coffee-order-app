require_relative "coffee"

class Coffee_Shop
  drink = ["1."]
  food = ["1."]
  flavors= ["1."]

  def initialize
    puts "Welcome to the Grand opening of Sage Coffee Shop!"
    puts "We offer delicious breakfast food and different coffee options"
    puts "To start your order, would you like to view our food menu or coffee menu?"
    puts "Type 'food' for the food menu and 'coffee' for the coffee menu"
    choose_menu=gets.chomp
    puts "Perfect! Here is the #{choose_menu} menu"
    puts drinks

  def view_menu


  end
  
  
  def place_drink_order
    puts "What drink can I get for you today?"
    drink_order= gets.chomp
    puts "Would you like any flavors in your drink? Type 'Y' for 'Yes' and 'N' for 'No'"
    flavor_choice= gets.chomp
    if flavor_choice == 'Y'
      puts "Here is the menu of flavors: #{flavors}"
      puts "What flavor would you like to add to your drink? Please type the flavor"
    end
    puts "You would like a #{@size} #{@drink}./n Is this correct? Type 'Y' for Yes and 'N' for No"
    verify_order = gets.chomp
    if verify== 'Y'
      puts "Perfect! Your drink will be ready shortly! "
    end
    elsif answer == 'N'
      puts "I'm sorry I got your order wrong! What would you like to drink?"
    end
  end
  
  def status

  end

end
