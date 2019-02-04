require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end

chris = Driver.new('chris')
krystle = Driver.new('krystle')

seann = Passenger.new("seann")
shemar = Passenger.new("shemar")

ride1 = Ride.new(chris, shemar, 100.1)
ride2 = Ride.new(krystle, seann, 2.5)
ride3 = Ride.new(chris, seann, 3.2)
ride4 = Ride.new(krystle, seann, 5.2)

binding.pry
puts "goodbye"
