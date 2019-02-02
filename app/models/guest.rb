class Guest
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    def trips
        Trip.all.select{|trip| trip.guest == self}
    end

    def listings
        trips.map {|trip| trip.listing}
    end

    def trip_count
        listings.count
    end

    def self.pro_traveler
        trips = Trip.all.map{|x| x.guest}
        trips.find{|trip| trips.count(trip) > 1}
    end

    def self.find_by_name(name)
        trips = Trip.all.find_all{|x| x.guest.name == name}
    end

end