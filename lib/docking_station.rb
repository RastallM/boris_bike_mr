class DockingStation

    attr_accessor :bike_rack

    def initialize
        @bike_rack = []
    end

    def release_bike
        fail 'No bikes available' unless bike_rack.count >= 1
        bike_rack[0]
    end

    def dock(bike)
        fail 'The station is full!' unless bike_rack.count < 20 
        bike_rack << bike
    end
      
end

