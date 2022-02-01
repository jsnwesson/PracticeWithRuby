class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize (year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
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
end

betty = MyCar.new(1996, 'Nissan', 'black')

# 5.times{ puts betty.speed_up (2) }
# 3.times{ puts betty.brake 2 }
# puts betty.year
betty.spray_paint("white")