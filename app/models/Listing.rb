# #### Listing
# - #guests
#   - returns an array of all guests who have stayed at a listing
# - #trips
#   - returns an array of all trips at a listing
# - #trip_count
#   - returns the number of trips that have been taken to that listing
# - .all
#   - returns an array of all listings
# - .find_all_by_city(city)
#   - takes an argument of a city name (as a string) and returns all the listings for that city
# - .most_popular
#   - finds the listing that has had the most trips

class Listing
  attr_accessor :city
  @@all = []   #@@all has all the Listings
    def initialize(city)
      @city = city
      @@all << self
    end

    # def my_trips  #helper method
    #   Trip.all.select do |trip|
    #     trip.listing == self
    #   end
    # end

    def trips
      Trip.all.select do |trip|
        trip.listing == self
      end
    end

    def guests
      trips.collect {|trip|trip.guest}

    end



    def trip_count
      trips.count
    end

    def self.all
      @@all
    end

    def self.find_all_by_city(name)
      Listing.all.select {|list| list.city.upcase == name.upcase}
    end

    def self.most_popular
      all.max_by(1) {|list| list.trip_count}
    end

    # - .most_popular
    #   - finds the listing that has had the most trips
    #   -through trip we have (guest, listing)
    #    self.max_by(n) {|v| rand ** (1.0/yield(v)) }
end


# - .find_all_by_city(city)
#   - takes an argument of a city name (as a string) and returns all the listings for that city
# - .most_popular
#   - finds the listing that has had the most trips
