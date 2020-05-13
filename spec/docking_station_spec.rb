require 'docking_station'
require 'bike'

describe DockingStation do

  describe "#release_bike" do
    it "should respond to release_bike" do
      expect(subject).to respond_to(:release_bike)
    end

    it "should release working bikes" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it "should not release working bikes" do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end
  end

  describe "#dock" do
    it "allows a bike to be docked " do
      expect(subject).to respond_to(:dock)
    end

  it "raise an error if docking station is full" do
    bike = Bike.new
    subject.dock(bike)
    expect { subject.dock(bike) }.to raise_error "dock full"
  end



  end

end
