require_relative "coffee", "menu"

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
    puts "To start your order, would you like to view our food menu or coffee menu?"
    puts "Type 'food' for the food menu and 'coffee' for the coffee menu"
    choose_menu=gets.chomp
    puts "Perfect! Here is the #{choose_menu} menu"
    if choose_menu == "food"
      puts food_menu
    elseif choose_menu == "coffee"
      puts drink_menu
    else
      puts "Please choose a valid option"
    end 

    puts "Now that you've viewed the #{choose_menu} menu, what would you like to do?"
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
    puts "Did you want to order a drink or food?"
    puts "Type 'drink' to order a drink or 'food' to order food"
    order_option= gets.chomp
    puts "What #{order_option} can I get for you today?"
    puts "Here are the #{order_option}s:"
    if order_option == "food"
      puts food_menu
      food_choice= gets.chomp.to_i
      if food_choice== 1
        food.fetch(:1)
      elsif food_choice== 2
        food.fetch(:2)
      elsif food_choice== 3
        food.fetch(:3)
      elsif food_choice== 4
        food.fetch(:4)
      elsif food_choice== 5
        food.fetch(:5)
      else
        "Please choose a valid option"
      end
      
    elseif order_option == "coffee"
      puts drink_menu
      drink_choice= gets.chomp.to_i
      if drink_choice== 1
        drink.fetch(:1)
      elsif drink_choice== 2
        drink.fetch(:2)
      elsif drink_choice== 3
        drink.fetch(:3)
      elsif drink_choice== 4
        drink.fetch(:4)
      elsif drink_choice== 5
        drink.fetch(:5)
      else
        "Please choose a valid option"
      end
    end
    puts "Type the number of the menu item you would like"
    




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
