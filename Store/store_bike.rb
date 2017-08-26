require "./store_module.rb"

class Store

  include Price

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
