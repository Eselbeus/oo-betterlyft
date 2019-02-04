class Passenger
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select do |ride|
      ride.passenger == self
    end
  end

  def drivers
    rides.map do |ride|
      ride.driver
    end
  end

  def total_distance
    rides.reduce(0) do |acc, ride|
      acc + ride.distance
    end
  end

  def self.premium_members
    self.all.select do |pass|
       if pass.total_distance > 100
         true
       else
         false
       end
    end
  end

end
