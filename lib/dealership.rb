class Dealership
  attr_reader :name, :address, :inventory, :total_value

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @dealership_total_value = 0
  end

  def inventory_count
    @inventory.length
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    inventory_count > 0
  end

  def cars_by_make(car_make)
    list_by_make = []
    @inventory.each do |car|
      list_by_make << car if car.make == car_make
      p list_by_make
    end
  end

  def total_value
    @inventory.each do |car|
      @dealership_total_value += car.total_cost
    end
    @dealership_total_value
  end
  def details
    @name
    @address
    @inventory
    @dealership_total_value
  end
  def average_price_of_car
    average_list = 0
    @inventory.each do |car|
        average_list += car.total_cost
    end
    average_list / @inventory.length
  end
end
