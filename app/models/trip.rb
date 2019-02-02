class Trip
    attr_reader :listing, :guest
    attr_accessor :duration
    @@all = []
    def initialize(guest, listing, duration)
        @listing = listing
        @guest = guest
        @duration = duration
        @@all << self
    end

    def self.all
        @@all
    end


    
end