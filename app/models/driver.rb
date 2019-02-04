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

end
