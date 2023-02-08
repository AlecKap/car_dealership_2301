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

  it 'has inventory?' do
    dealership = Dealership.new("Acme Auto", "123 Main Streat")
    
    expect(dealership.has_inventory?).to be false
  end

end