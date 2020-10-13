class Ride

  @@all = []

  attr_accessor :passenger, :driver, :distance, :rating

  def initialize(passenger, driver, distance)
    #notice that a ride cannot be initialized with a rating, it must be added after
    @passenger = passenger
    @driver = driver
    @distance = distance
    @rating = nil
    @@all << self
  end

  def self.all
    @@all
  end

end
