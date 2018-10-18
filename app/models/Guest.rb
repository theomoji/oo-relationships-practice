class Guest
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end

  def listings
    trips.map {|trip| trip.listing}
  end
  # - #listings
  #   - returns an array of all listings a guest has stayed at
  def trips
    Trip.all.select {|trip| trip.guest == self}
  end
#return an array of all trips the guest has taken
  def trip_count
    trips.count
  end

  def self.all
    @@all #returns all guests
  end

  def self.pro_traveller
    all.select {|guest| guest.trip_count > 1}
  end

  def self.find_all_by_name(name)
    all.select { |guest| guest.name == name}
  end

end


#
# - .pro_traveller
#   - returns an array of all guests who have made over 1 trip
# .find_all_by_name(name)
  # - takes an argumreturns the all guests with that name
