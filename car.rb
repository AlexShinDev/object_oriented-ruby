class Vehicle
  def initialize(input_options)
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  attr_reader :fuel, :drive, :model
  attr_writer :fuel

  def initialize(input_options)
    super()
    #()?
    @fuel = input_options[:fuel]
    @drive = input_options[:drive]
    @model = input_options[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  attr_reader :speed, :type, :weight

  def initialize(input_options)
    super()
    #()?
    @speed = input_options[:speed]
    @type = input_options[:type]
    @weight = input_options[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end


car = Car.new(
              fuel: "18gal", drive: 2, model: "Honda"
              )
bike = Bike.new(
                speed: "20mph", type: "mountain", weight: 10
                )

p car.fuel