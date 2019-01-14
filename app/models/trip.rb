class Trip
    @@all = []
    def initialize
        @listing = Listing.new
        @guest = Guest.new
        @@all << self
    end
    
    def self.all
        @@all
    end
end
