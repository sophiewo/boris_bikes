require 'docking_station'
require 'bike'

describe DockingStation do

  subject(:docking_station) { described_class.new }
  subject(:bike) { described_class.new }

  describe "#release_bike" do
    it "should respond to release_bike" do
      expect(docking_station).to respond_to(:release_bike)
    end

    it "should release working bikes" do
      docking_station.dock(bike)
      expect(docking_station.release_bike).to eq bike
    end

    it "should not release working bikes" do
      expect { docking_station.release_bike }.to raise_error "No bikes available"
    end
  end

  describe "#dock" do
    it "allows a bike to be docked " do
      expect(docking_station).to respond_to(:dock)
    end

    it "raise an error if docking station is full" do
      
     20.times { docking_station.dock(bike) }
      expect { docking_station.dock(bike) }.to raise_error "dock full"
    end
  end
end
