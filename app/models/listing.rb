class Listing
    attr_reader :city
    @@all = []
    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select {|trip| trip.listing == self}
    end

    def guests
        trips.map {|trip| trip.guest}
    end

    def trip_count
        trips.count
    end

    def self.find_all_by_city(city)
        Trip.all.find_all{|trip| trip.listing.city == city}
    end

    def self.most_popular
        trips = Trip.all.map{|x| x.listing}
        trips.find{|trip| trips.count(trip) > 1}
    end
end