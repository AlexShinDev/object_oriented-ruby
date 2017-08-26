require "./store_bike.rb"
require "./store_item.rb"

bike_1 = Store.new(  
                  type: "mountain",
                  color: "blue",
                  price: 100
                  )
bike_2 = Store.new(
                  type: "bmx",
                  color: "red",
                  price: 95
                  )
bike_3 = Store.new(
                  type: "racing",  
                  color: "green", 
                  price: 130
                  )

food = Food.new(
                  shelf_life: "August 22nd"
                  )

p bike_1