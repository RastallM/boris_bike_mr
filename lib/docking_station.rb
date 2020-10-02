class DockingStation

    attr_accessor :bike_rack

    def initialize
        @bike_rack = []
    end

    def release_bike
        fail 'No bikes available' if bike_rack.empty?
        bike_rack[0]
    end

    def dock(bike)
        fail 'The station is full!' if full?
        bike_rack << bike
    end
    
    private

    def full?
        return true if bike_rack.count == 20
        false
    end
end

