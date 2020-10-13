class Passenger

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def rides
    Ride.all.select {|ride| ride.passenger == self}
  end

  def drivers
    rides.map {|ride| ride.driver}
  end

  def rate_last_ride(num)
    #write code here that takes the number argument and applies it to the @rating variable of the last ride that this driver took
    #make sure a score is no less than 1 and no greater than 5
  end

end
