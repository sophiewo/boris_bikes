require 'bike'

describe Bike do

  it "should respond to working?" do
    expect(subject).to respond_to(:working?)
  end

  it 'working? returns true if @status is broken' do
    expect(Bike.new("broken").working?).to eq(false)
  end

end
