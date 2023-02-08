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
end