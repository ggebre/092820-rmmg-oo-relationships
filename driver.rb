class Driver

  @@all = []

  attr_accessor :name, :car

  def initialize(name, car)
    @name = name
    @car = car
    @@all << self
  end

  def rides
    Ride.all.select {|ride| ride.driver == self}
  end

  def passengers
    rides.map {|ride| ride.passenger}
  end

  def pick_up_passenger(passenger, distance)
    Ride.new(passenger, self, distance)
    #Write the logic so that when a driver instance has the #passengers method called on it,
    #the passenger passed in here shows up there
    passengers 
  end

  def rating
    #Write a method here that averages the ratings for all rides that the driver has that have a score value that *isn't* nil
    rides.inject(0) do |sum, ride| 
      ride.rating ? sum + ride.rating : sum
    end / 1.0*rides.size
  end

end
