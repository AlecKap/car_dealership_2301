require './lib/car'

class Dealership
  attr_reader :name, :location, :inventory
  def initialize(name, location)
    @name = name
    @location = location
    @inventory = []
  end

  def inventory_count
    @inventory.length
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    if @inventory.empty? == true
      return false
    else
      return true
    end
  end

  def cars_by_make(type)
    sorted_cars = []
    sorted_cars = @inventory.select do |car|
      sorted_cars << car if car.make == type
    end
    sorted_cars
  end

  def total_value
    @inventory.each do |car|
      car.total_cost.sum
    end
  end
end