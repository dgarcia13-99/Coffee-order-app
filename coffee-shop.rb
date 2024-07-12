require_relative "coffee"

class CoffeeShop
  def initialize
    @final_order= Coffee.new
  end

  def welcome
    puts "Welcome to the Grand opening of Sage Coffee Shop!"
    puts "We offer delicious coffee options"
    main_menu
  end

  def main_menu
    puts ["1. View Menu", "2. Place Order", "3. View Order Status"]
    what_to_do= gets.chomp
    if what_to_do == "1"
      view_menu
    elsif what_to_do == "2"
      place_order
    elsif what_to_do == "3"
      status
    else
      puts "Please choose a valid option"
    end
  end
    
  def view_menu
    #--------------------------------------------------------------------------------------------------------------------------------
    #Menu Hashes to access items
    drink = {:"1"=>"latte", :"2"=>"cappuccino", :"3"=>"americano", :"4"=>"macchiato", :"5"=>"matcha"}
    flavors= {:"1"=>"caramel", :"2"=>"vanilla", :"3"=>"butterscotch", :"4"=> "chocolate", :"5"=>"blueberry"}

    #Display Menu
    drink_menu = ["1.latte", "2.cappuccino", "3.americano", "4.macchiato", "5.matcha"]
    flavor_menu = ["caramel", "vanilla", "butterscotch", "chocolate", "blueberry"]
    #--------------------------------------------------------------------------------------------------------------------------------
    puts "To start your order, Please take a moment to consider our menu"
    puts drink_menu

    puts "\n"
    puts "Now that you've viewed the menu, what would you like to do?"
    puts ["1. View Menu", "2. Place Order", "3. View Order Status"]
    puts "Type the number of the option you'd like to continue with"
    what_to_do= gets.chomp
    if what_to_do == "1"
      view_menu
    elsif what_to_do == "2"
      place_order
    elsif what_to_do == "3"
      status
    else
      puts "Please choose a valid option"
    end
  end
  
  def place_order
    #--------------------------------------------------------------------------------------------------------------------------------
    #Menu Hashes to access items
    drink = {:"1"=>"latte", :"2"=>"cappuccino", :"3"=>"americano", :"4"=>"macchiato", :"5"=>"matcha"}
    flavor = {:"1"=>"caramel", :"2"=>"vanilla", :"3"=>"butterscotch", :"4"=> "chocolate", :"5"=>"blueberry"}

    #Display Menu
    drink_menu = ["1.latte", "2.cappuccino", "3.americano", "4.macchiato", "5.matcha"]
    flavor_menu = ["1.caramel", "2.vanilla", "3.butterscotch", "4.chocolate", "5.blueberry"]
    #--------------------------------------------------------------------------------------------------------------------------------
    puts "What drink can I get for you today?"
    puts "Here are the drink options:"
    puts drink_menu
    puts "\n"
    puts "Type the number of the menu item you would like to order"
    drink_choice= gets.chomp
    if drink_choice== "1"
      @final_order.drink= drink.fetch(:"1")
    elsif drink_choice== "2"
      @final_order.drink= drink.fetch(:"2")
    elsif drink_choice== "3"
      @final_order.drink= drink.fetch(:"3")
    elsif drink_choice== "4"
      @final_order.drink= drink.fetch(:"4")
    elsif drink_choice== "5"
      @final_order.drink= drink.fetch(:"5")
    else
      "Please choose a valid option"
    end

    puts "You chose a #{@final_order.drink}"
    puts "What size did you want your drink?"
    puts "Type 'small', 'medium', or 'large'"
    @final_order.size= gets.chomp
    puts "\n"

    puts "Did you want your drink iced or hot?"
    puts "Type 'iced' or 'hot'"
    @final_order.temperature=gets.chomp
    puts "\n"

    puts "Would you like any flavors in your drink? Type 'Y' for Yes and 'N' for No"
    flavor_choice= gets.chomp
    puts "\n"
    if flavor_choice == 'Y'
      puts "Here is the menu of flavors:"
      puts flavor_menu
      puts "\n"
      puts "What flavor would you like to add to your drink?" 
      puts "Type the number of the flavor option you would like to add to your drink"
      add_flavor=gets.chomp
      if add_flavor == "1"
        @final_order.flavor= flavor.fetch(:"1")
        puts "Perfect! Your final order is a #{@final_order.size} #{@final_order.temperature} #{@final_order.drink} with #{@final_order.flavor} flavor. It should be ready shortly!"
      elsif add_flavor == "2"
        @final_order.flavor= flavor.fetch(:"2")
        puts "Perfect! Your final order is a #{@final_order.size} #{@final_order.temperature} #{@final_order.drink} with #{@final_order.flavor} flavor. It should be ready shortly!"
      elsif add_flavor == "3"
        @final_order.flavor= flavor.fetch(:"3")
        puts "Perfect! Your final order is a #{@final_order.size} #{@final_order.temperature} #{@final_order.drink} with #{@final_order.flavor} flavor. It should be ready shortly!"
      elsif add_flavor == "4"
        @final_order.flavor= flavor.fetch(:"4")
        puts "Perfect! Your final order is a #{@final_order.size} #{@final_order.temperature} #{@final_order.drink} with #{@final_order.flavor} flavor. It should be ready shortly!"
      elsif add_flavor == "5"
        @final_order.flavor= flavor.fetch(:"5")
        puts "Perfect! Your final order is a #{@final_order.size} #{@final_order.temperature} #{@final_order.drink} with #{@final_order.flavor} flavor. It should be ready shortly!"
      else
        puts "Please choose a valid option"
      end
      
    elsif flavor_choice == 'N'
      puts "Perfect! Your final order is a #{@final_order.drink}. It should be ready shortly!"
    else
      puts "Please choose a valid option"
    end

    puts "\n"
    puts "Would you like to check the status of your order?"
    puts "Type 'Y' for Yes or 'N' for No"
    check_status=gets.chomp
    puts "\n"
    if check_status == 'Y'
      status
    elsif check_status == 'N'
      puts "Thank you for shopping with Sage Coffee Shop. See you soon!"
    else
      puts "Please choose a valid option"
    end
  end

  def status
    statuses= [
      "Sorry, we haven't started on your drink yet:( but we'll get started soon!",
      "Just started working on your drink!", 
      "Get ready! We're adding the final touches",
      "Ready! Thank you for shopping with Sage Coffee Shop. See you soon!"]

    current_status=statuses.sample
    puts current_status
  end
end
