require 'rspec'
require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  it 'exists' do
    dealership = Dealership.new('Acme Auto', '123 Main Street')
    expect(dealership).to be_a Dealership
  end
  it 'has attributes' do
    dealership = Dealership.new('Acme Auto', '123 Main Street')
    expect(dealership.inventory).to eq []
    expect(dealership.inventory_count).to eq 0
  end
  it 'can add cars' do
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    dealership = Dealership.new('Acme Auto', '123 Main Street')
  
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    expect(dealership.inventory_count).to eq 2
  end
  it 'can pass it3 test, and it4 test' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.has_inventory?).to eq false
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)
    expect(dealership.has_inventory?).to eq true
    p dealership.cars_by_make("Toyota")
    
    p dealership.cars_by_make("Ford")
    expect(dealership.total_value).to eq 156000
    expect(dealership.average_price_of_car).to eq 39000
    # expect(dealership.details).to eq {"total_value" => 156000, "address" => "123 Main Street"}
  end
end
