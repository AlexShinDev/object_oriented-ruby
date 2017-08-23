# bike_1 = {type: "mountain", color: "blue", price: 100}
# bike_2 = {:type => "bmx", :color => "red", :price => 95}
# bike_3 = {type: "racing", color: "green", price: 130}

# class Bike

#   def initialize(input_type, input_color, input_price)
#     @type = input_type
#     @color = input_color
#     @price = input_price
#   end

#   def type
#     return @type
#   end

#   def color
#     return @color
#   end

#   def price=(new_price)
#     @price = new_price
#   end

#   def price
#     return @price
#   end


#   def bike_info
#     "This bike is a #{color} #{type} bike, and it costs #{price.to_s} dollars."
#   end

#   def bike_info=
#     "This bike is a #{color} #{type} bike, and it costs #{price.to_s} dollars."
#   end

# end

#new session

# class Bike

#   attr_reader :type, :color, :price

#   attr_writer :price

#   def initialize(input_type, input_color, input_price)
#     @type = input_type
#     @color = input_color
#     @price = input_price
#   end


#   def bike_info
#     "This bike is a #{color} #{type} bike, and it costs #{price.to_s} dollars."
#   end

#   def bike_info=
#     "This bike is a #{color} #{type} bike, and it costs #{price.to_s} dollars."
#   end

# end


# bike_1 = Bike.new("mountain", "blue", 100)
# bike_2 = Bike.new("bmx", "red", 95)
# bike_3 = Bike.new("racing", "green", 130)


# bike_1.price = 20
# p bike_1.price
# p bike_2.type
# p bike_3.type

#end Session

class Bike

  attr_reader :type, :color, :price

  attr_writer :type, :color, :price

  def initialize(input_options)
    @type = input_options[:type]
    @color = input_options[:color]
    @price = input_options[:price]
  end


  def bike_info
    "This bike is a #{color} #{type} bike, and it costs #{price.to_s} dollars."
  end

end

class Food < Bike
  attr_reader :shelf_life
  attr_writer :shelf_life

  def initialize(input_options)
    super
    @shelf_life = input_options[:shelf_life]
  end
end


bike_1 = Bike.new(  
                  type: "mountain",
                  color: "blue",
                  price: 100
                  )
bike_2 = Bike.new(
                  type: "bmx",
                  color: "red",
                  price: 95
                  )
bike_3 = Bike.new(
                  type: "racing",  
                  color: "green", 
                  price: 130
                  )

food = Food.new(
                  shelf_life: "August 22nd"
                  )
# The "<" sign in classes points to a different class

p food.shelf_life


