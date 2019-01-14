class Guest
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.trips
        # Trip.all.map do |x|
           
    end

    def self.trip_count
        Trip.all.map do |x|
            if x == Guest.name
                x.count
            end
        end
    end

    def self.all
        @@all
    end

    def self.pro_traveler
        self.all.map do |x|
            if x.name > 1
                x
            end
        end
    end

    def self.find_by_name(name)
        
    end

end