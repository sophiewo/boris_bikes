require 'docking_station'
require 'bike'

describe DockingStation do

  subject(:docking_station) { described_class.new }
  subject(:bike) { described_class.new }
  DEFAULT_CONSTANT = 20

  describe "#release_bike" do
    it "should respond to release_bike" do
      expect(docking_station).to respond_to(:release_bike)
    end

    it "should release working bikes" do
      dock = docking_station
      bike = Bike.new
      dock.dock(bike)
      expect(dock.release_bike).to eq(bike)
    end

    it "should not release working bikes" do
      expect { docking_station.release_bike }.to raise_error "No bikes available"
    end

    it 'should not release broken bikes' do
      bike = Bike.new("broken")
      docking_station.dock(bike)
      expect { docking_station.release_bike }.to raise_error "No working bikes available"
    end
  end

  describe "#dock" do
    it "allows a bike to be docked " do
      expect(docking_station).to respond_to(:dock)
    end

    it "raise an error if docking station is full" do
     DEFAULT_CONSTANT.times { docking_station.dock(bike) }
      expect { docking_station.dock(bike) }.to raise_error "dock full"
    end

    it 'has a variable capacity' do
      docking_capacity = DockingStation.new(39)
      39.times { docking_capacity.dock(bike) }
      expect { docking_capacity.dock(bike) }.to raise_error "dock full"
    end

    # it 'when you add bike, it also gives a status' do
    #   bike = Bike.new
    #   docking_station.dock(bike)
    #   expect(docking_station.instance_variable_get(:@bike_store)).to include({name: bike, status: "working"})
    # end
  end
end
