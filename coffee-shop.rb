require_relative "coffee"

class Coffee_Shop
  
  def initialize
    puts "Welcome to the Grand opening of Sage Coffee Shop!"
    puts "We offer delicious breakfast food and different coffee options"
    puts "What would you like to do?"
    puts ["1. View Menu", "2. Place Order", "3. View Order Status"]
    what_to_do= gets.chomp.to_i
    if what_to_do == 1
      view_menu
    elsif what_to_do == 2
      place__order
    elsif what_to_do == 3
      status
    else
      puts "Please choose a valid option"
    end
  end
    
  def view_menu
#---------------------------------------------------------------------------------------------------------------------------------------------
  #Menu Hashes to access items
  drink = {:1=>"latte", :2=>"cappuccino", :3=>"americano", :4=>"macchiato", :5=>"matcha"}
  food = {:1=>"plain bagel with cream cheese", :2=>"egg and potatoes breakfast burrito", :3=>"avocado toast", :4=>"crossaint breakfast sandwich", :5=>"grilled cheese"}
  flavors= {:1=>"caramel", :2=>"vanilla", :3=>"butterscotch", :4=> "chocolate", :5=>"blueberry"}

  #Display Menu
  drink_menu = ["1.latte", "2.cappuccino", "3.americano", "4.macchiato", "5.matcha"]
  food_menu = ["1.plain bagel with cream cheese", "2.egg and potatoes breakfast burrito", "3.avocado toast", "4.crossaint breakfast sandwich", "5.grilled cheese"]
  flavor_menu = ["caramel", "vanilla", "butterscotch", "chocolate", "blueberry"]
#----------------------------------------------------------------------------------------------------------------------------------------------
    puts "To start your order, would you like to view our food menu or coffee menu?"
    puts "Type 'food' for the food menu and 'coffee' for the coffee menu"
    choose_menu=gets.chomp
    puts "Perfect! Here is the #{choose_menu} menu"
    display_menu= choose_menu.to_s + "_menu"
    puts display_menu

    puts "Now that you've viewed the #{choose_menu} menu, what would you like to do now?"
    puts ["1. View Menu", "2. Place Order", "3. View Order Status"]
    what_to_do= gets.chomp.to_i
    if what_to_do == 1
      view_menu
    elsif what_to_do == 2
      place__order
    elsif what_to_do == 3
      status
    else
      puts "Please choose a valid option"
    end
  end
  
  
  def place__order
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
