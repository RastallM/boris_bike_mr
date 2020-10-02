class DockingStation
    DEFAULT_CAPACITY = 20
    attr_accessor :bike_rack
    attr_reader :capacity

    def initialize( capacity=DEFAULT_CAPACITY )
        @bike_rack = []
        @capacity = capacity
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
        return true if bike_rack.count == @capacity
        false
    end
end

