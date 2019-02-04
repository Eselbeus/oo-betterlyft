require 'pry'
class Driver
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select do |ride|
      ride.driver == self
    end
  end

  def passengers
    rides.map do |ride|
      ride.passenger
    end.uniq
  end

  def passenger_names
    passengers.map do |passenger|
      passenger.name
    end
  end

  def driver_distance
    rides.reduce(0) do |acc, ride|
      acc + ride.distance
    end
  end

  def self.mileage_cap(miles)
    Driver.all.select do |driv|
      driv.driver_distance > miles
    end
  end

end
