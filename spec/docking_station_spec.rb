require 'docking_station'
require 'bike'

describe DockingStation do

  it "should respond to release_bike" do
    expect(subject).to respond_to(:release_bike)
  end

  it "should release working bikes" do
    bike = subject.release_bike
    expect(bike).to be_working
    # expect(subject.release_bike).to be_kind_of(Bike)
    # expect(subject.release_bike.working?).to eq true
  end

 end
