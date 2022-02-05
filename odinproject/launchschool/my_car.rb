class Vehicle
  attr_accessor :color
  attr_reader :year

  require 'time'

  @@number_of_vehicles = 0

  def initialize (year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def self.number_of_vehicles
    @@number_of_vehicles
  end

  def self.calculate_gas_mileage(gallons, miles)
    p "The gas mileage is #{miles / gallons} miles per gallon."
  end

  def age
    puts "My #{@model} is #{calculate_age} years old."
  end

  def to_s
    "This is a #{@year} #{@model}, with a #{@color} coat of paint."
  end

  def spray_paint (new_color)
    puts "Changing color of #{@model} from #{@color} to #{new_color}"
    puts "PSSSHHHHHHH"
    @color = new_color
    puts "The #{@model} is now: #{color}"
  end

  def speed_up (acceleration=1)
    @current_speed = @current_speed.to_i + acceleration
  end

  def brake (deceleration=1)
    @current_speed = @current_speed.to_i - deceleration
    @current_speed = 0 if @current_speed < 0
    @current_speed
  end

  def kill_engine
    @current_speed = 0
  end

  private

  def calculate_age
    Time.now.year - self.year
  end
end

module CustomCarParts

  def includes_sunroof? (boolean)
    @includes_sunroof = boolean
  end

end

class MyCar < Vehicle
  include CustomCarParts
  VEHICLE_DESCRIPTION = { type: "Car", number_of_doors: 4 }
end

class MyTruck < Vehicle
  VEHICLE_DESCRIPTION = { type: "Truck", number_of_doors: 2 }
end

betty = MyCar.new(1996, 'Nissan', 'black')

# 5.times{ puts betty.speed_up (2) }
# 3.times{ puts betty.brake 2 }
# puts betty.year
# betty.spray_paint("white")
# MyCar.calculate_gas_mileage(10, 200)
charlotte = MyTruck.new(1996, 'Pickup', 'white')
chevy = MyTruck.new(1996, 'Pickup', 'white')

puts Vehicle.number_of_vehicles
betty.includes_sunroof? true
p betty

# p MyCar.ancestors
# p MyTruck.ancestors
# p Vehicle.ancestors

betty.age