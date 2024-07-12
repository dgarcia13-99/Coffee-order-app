require_relative "coffee"


class Coffee_Shop
  def initialize
    #--------------------------------------------------------------------------------------------------------------------------------
    #Menu Hashes to access items
    drink = {:"1"=>"latte", :"2"=>"cappuccino", :"3"=>"americano", :"4"=>"macchiato", :"5"=>"matcha"}
    flavors= {:"1"=>"caramel", :"2"=>"vanilla", :"3"=>"butterscotch", :"4"=> "chocolate", :"5"=>"blueberry"}

    #Display Menu
    drink_menu = ["1.latte", "2.cappuccino", "3.americano", "4.macchiato", "5.matcha"]
    flavor_menu = ["caramel", "vanilla", "butterscotch", "chocolate", "blueberry"]
    #--------------------------------------------------------------------------------------------------------------------------------
    puts "Welcome to the Grand opening of Sage Coffee Shop!"
    puts "We offer delicious coffee options"
    puts "What would you like to do?"
    puts ["1. View Menu", "2. Place Order", "3. View Order Status"]
    what_to_do= gets.chomp
    if what_to_do == "1"
      view_menu
    elsif what_to_do == "2"
      place__order
    elsif what_to_do == "3"
      status
    else
      puts "Please choose a valid option"
    end
  end
    
  def view_menu
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
    puts "What drink can I get for you today?"
    puts "Here are the drink options:"
    puts drink_menu
    puts "\n"
    puts "Type the number of the menu item you would like to order"
    drink_choice= gets.chomp
    if drink_choice== "1"
      self.drink= drink.fetch(:"1")
    elsif drink_choice== "2"
      self.drink= drink.fetch(:"2")
    elsif drink_choice== "3"
      self.drink= drink.fetch(:"3")
    elsif drink_choice== "4"
      self.drink= drink.fetch(:"4")
    elsif drink_choice== "5"
      self.drink= drink.fetch(:"5")
    else
      "Please choose a valid option"
    end

    puts "You chose a #{@drink}"
    puts "What size did you want your drink?"
    puts "Type 'small', 'medium', or 'large'"
    self.size= gets.chomp
    puts "\n"

    puts "Did you want your drink iced or hot?"
    puts "Type 'iced' or 'hot'"
    self.temperature=gets.chomp
    puts "\n"

    puts "Would you like any flavors in your drink? Type 'Y' for 'Yes' and 'N' for 'No'"
    flavor_choice= gets.chomp
    if flavor_choice == 'Y'
      puts "Here is the menu of flavors: #{flavor_menu}"
      puts "What flavor would you like to add to your drink?" 
      puts "Type the number of the flavor option you would like to add to your drink"
      add_flavor=gets.chomp.to_i
      flavor_menu = ["caramel", "vanilla", "butterscotch", "chocolate", "blueberry"]
      if add_flavor == "1"
        self.flavor= flavor.fetch(:"1")
        puts "Perfect! Your final order is a #{@size} #{@temperature} #{@drink} with #{@flavor} flavor. It should be ready shortly!"
      elsif add_flavor == "2"
        self.flavor= flavor.fetch(:"2")
        puts "Perfect! Your final order is a #{@size} #{@temperature} #{@drink} with #{@flavor} flavor. It should be ready shortly!"
      elsif add_flavor == "3"
        self.flavor= flavor.fetch(:"3")
        puts "Perfect! Your final order is a #{@size} #{@temperature} #{@drink} with #{@flavor} flavor. It should be ready shortly!"
      elsif add_flavor == "4"
        self.flavor= flavor.fetch(:"4")
        puts "Perfect! Your final order is a #{@size} #{@temperature} #{@drink} with #{@flavor} flavor. It should be ready shortly!"
      elsif add_flavor == "5"
        self.flavor= flavor.fetch(:"5")
        puts "Perfect! Your final order is a #{@size} #{@temperature} #{@drink} with #{@flavor} flavor. It should be ready shortly!"
      else
        puts "Please choose a valid option"
      end
      
    elsif flavor_choice == 'N'
      puts "Perfect! Your final order is a #{@drink}. It should be ready shortly!"
    else
      puts "Please choose a valid option"
    end
  end

  def status
    statuses= [
      "Haven't started on your drink",
      "Just started working on your drink!", 
      "Adding final touches",
      "Ready!"]

    current_status=statuses.sample
    puts current_status
  end
end
