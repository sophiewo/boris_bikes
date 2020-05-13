require 'docking_station'
require 'bike'

describe DockingStation do
describe "#release_bike" do

  it "should respond to release_bike" do
    expect(subject).to respond_to(:release_bike)
  end

  it "should release working bikes" do
   expect(subject.release_bike.working?).to eq true
   # bike = subject.release_bike
   # expect(bike).to be_working
  end
end

describe "#dock" do

  it "allows a bike to be docked " do
    expect(subject).to respond_to(:dock)
  end
end
end
