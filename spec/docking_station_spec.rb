require 'docking_station'

describe DockingStation do
    

    describe '#release_bike' do 
        it 'releases a bike' do
            docking_station = DockingStation.new
            bike = Bike.new 
            docking_station.dock(bike)
            expect(docking_station.release_bike).to be_a Bike
            #puts "the object ID of when you release_bike is #{bike.object_id}"
        end
    end
    describe '#release_bike' do
        it 'raises an error when there are no bikes available' do
            docking_station = DockingStation.new
            docking_station.bike_rack = []
            expect { docking_station.release_bike }.to raise_error 'No bikes available'
        end
    end



    bike = Bike.new
    it { expect(bike).to be_a Bike }

    it { expect(bike.working?).to eq true }

    describe '#dock(bike)' do
        it 'docks a bike' do
            docking_station = DockingStation.new
            bike = Bike.new
            docking_station.bike_rack = []   
            expect(docking_station.dock(bike)).to eq [bike]
        end

        it 'docks upto its maximum capacity' do
            docking_station = DockingStation.new
            20.times {docking_station.dock(Bike.new)}
            expect(docking_station.bike_rack.count).to eq (20)
        end

        it "doesn't dock more bikes than capacity" do 
            docking_station = DockingStation.new
            20.times {docking_station.dock(Bike.new)}
            expect{ docking_station.dock(bike) }.to raise_error 'The station is full!'
        end
    end

    describe '#release_bike' do
        it "returns the docked bike" do 
            docking_station = DockingStation.new
            bike = Bike.new
            docking_station.dock(bike)
            expect(docking_station.release_bike).to eq bike
        end
    end   
end


