require_relative 'driver.rb'
require_relative 'ride.rb'
require_relative 'passenger.rb'
require 'pry'

#Has many through relationships always require a join model
# Driver -< Ride >- Pessenger

#The single source of truth for has-many-through relationships is the join model

randi = Passenger.new("Randi")
getu = Passenger.new("Getu")

michael = Driver.new("Michael", "Monster Truck")
mike = Driver.new("Mike", "Limo")

ride1 = Ride.new(randi, michael, 50)
ride2 = Ride.new(randi, mike, 25)

michael.pick_up_passenger(getu, 10)

#randi.rate_last_ride(5)
#getu.rate_last_ride(1)
#michael.rating should return 3  

binding.pry
