require_relative 'bike'

class DockingStation

attr_reader :bike

  def initialize
    @bike_store = []
  end

  def release_bike
    fail "No bikes available" unless @bike_store.count >= 1
    @bike_store.pop
  end



  def dock(bike)
    fail "dock full" if @bike_store.count >= 20
    @bike_store << bike
  
  end

end
