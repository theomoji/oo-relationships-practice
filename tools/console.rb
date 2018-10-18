require_relative '../config/environment.rb'

# require_relative 'Trip'
# require_relative 'Listing'
# require_relative 'Guest'


def reload
  load 'config/environment.rb'
end

tom = Guest.new("Tom")
mike = Guest.new("Mike")
john = Guest.new("John")
alex = Guest.new("Alex")
joe = Guest.new("Joe")

france2 = Listing.new("France")
france = Listing.new("France")
japan = Listing.new("Japan")
ny = Listing.new("NY")
cali = Listing.new("California")
texas = Listing.new("Texas")


trip1=Trip.new(tom, france)
trip2=Trip.new(mike, japan)
trip3=Trip.new(alex, texas)
trip4=Trip.new(alex, japan)
trip5=Trip.new(tom, ny)
trip6=Trip.new(tom, japan)

Pry.start
