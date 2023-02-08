require 'rspec'
require './lib/car'
require './lib/dealership'

RSpec.describe 'Dealership' do 
  it 'exists' do
   dealership = Dealership.new("Acme Auto", "123 Main Streat")

   expect(dealership).to be_a Dealership
  end

  it 'has inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Streat")
    
    expect(dealership.inventory).to eq([])
  end

  it 'has inventory count' do
    dealership = Dealership.new("Acme Auto", "123 Main Streat")
    
    expect(dealership.inventory_count).to be 0
  end

  it 'adds cars to inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Streat")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    dealership.add_car(car_1)
    dealership.add_car(car_2)

    expect(dealership.inventory).to eq([car_1, car_2])
    expect(dealership.inventory_count).to be 2
  end

  it 'has empty inventory?' do
    dealership = Dealership.new("Acme Auto", "123 Main Streat")
    
    expect(dealership.has_inventory?).to be false
  end

  it 'has not empty inventory?' do
    dealership = Dealership.new("Acme Auto", "123 Main Streat")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)

    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)

    expect(dealership.has_inventory?).to be true
  end

end