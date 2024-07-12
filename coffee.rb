class Coffee
  attr_accessor :drink, :temperature, :size, :flavor

  def initialize(drink, temperature, size, flavor="none")
    @drink= drink
    @temperature = temperature
    @size= size
    @flavor = flavor
  end

end
