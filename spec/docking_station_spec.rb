require 'docking_station'

describe DockingStation do
    

    describe '#release_bike' do 
        it 'releases a bike' do
            docking_station = DockingStation.new
            bike = Bike.new 
            docking_station.dock(bike)
            expect(docking_station.release_bike).to eq bike
            puts "the object ID of when you release_bike is #{bike.object_id}"
        end
    end
    describe '#release_bike' do
        it 'raises an error when there are no bikes available' do
            docking_station = DockingStation.new
            expect { docking_station.release_bike }.to raise_error 'No bikes available'
        end
    end



    bike = Bike.new
    it { expect(bike).to be_a Bike }

    it { expect(bike.working?).to eq true }

    it { is_expected.to respond_to :bike }

    describe '#dock(bike)' do
        it 'docks a bike' do
            docking_station = DockingStation.new
            bike = Bike.new   
            expect(docking_station.dock(bike)).to eq bike
            puts "The object ID of the bike when .dock(bike method is used is: #{bike.object_id}"
        end
    end

    describe '#bike' do
        it "returns the docked bike" do 
            docking_station = DockingStation.new
            bike = Bike.new 
            docking_station.dock(bike)
            expect(docking_station.bike).to eq bike
            puts"The object ID of the bike when .bike method is used is: #{bike.object_id}"
        end
    end   
end


