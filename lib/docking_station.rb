require_relative 'bike'

class DockingStation

attr_reader :bike

  def release_bike
    fail "No bikes available" if empty?
    @bike = Bike.new
  end



  def dock(bike)
    @bike 
  end

end
