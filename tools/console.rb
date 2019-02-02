require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end





# Put your variables here~!

listing1 = Listing.new("Seattle")
listing2 = Listing.new("New York City")
listing3 = Listing.new("Los Angeles")

guest1 = Guest.new("Cristian")
guest2 = Guest.new("Barry")
guest3 = Guest.new("Barney")

Trip.new(guest1, listing2, 10)
Trip.new(guest2, listing2, 5)
Trip.new(guest2, listing1, 5)
Trip.new(guest3, listing3, 20)
Trip.new(guest2, listing3, 5)

binding.pry
