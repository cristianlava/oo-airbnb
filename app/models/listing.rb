class Listing
    attr_accessor :city
    @@all = []
    def initialize
        @@all << self
    end

    def self.trips
        Trip.all.map do |x|
            if x == Guest.name
                x
            end
        end
    end

    def self.trip_count
        Trip.listing.map do |x|
            if x == Listing.all
                x
            end
        end
    end

    def self.all
        @@all
    end

    def self.find_all_by_city(city)
        self.all.select {|x| x = city}
    end

    def self.most_popular
        self.all.select {|x, y| x > y ? x : y}
    end

end
