class Ride
  attr_accessor :driver, :passenger, :distance
  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
  end

  def self.all
    @@all
  end
  
  def self.average_distance
    Ride.all.inject(0) do |sum, ride|
      sum + ride.distance
    end / Ride.all.size
  end

end
