require 'docking_station'

describe DockingStation do
    docking_station = DockingStation.new
    bike = docking_station.release_bike 

    it { is_expected.to respond_to :release_bike }

    it { expect(bike).to be_a Bike }

    it { expect(bike.working?).to eq true }

    it "docks something" do
        expect(docking_station.dock(bike)).to eq bike
        # it { is_expected.to respond_to(:dock).with(1).argument }
    end
    
    it { is_expected.to respond_to :bike }
end

