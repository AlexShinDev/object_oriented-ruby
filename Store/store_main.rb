require ".store.rb"
require ".store_item.rb"

bike_1 = Supermarket::Store.new(  
                  type: "bike",
                  color: "blue",
                  price: 100
                  )
bike_2 = Supermarket::Store.new(
                  type: "bike",
                  color: "red",
                  price: 95
                  )
bike_3 = Supermarket::Store.new(
                  type: "bike",  
                  color: "green", 
                  price: 130
                  )

food = Supermarket::Food.new(
                  shelf_life: "August 22nd"
                  )
