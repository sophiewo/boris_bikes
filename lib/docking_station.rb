require_relative 'bike'

class DockingStation

attr_reader :bike

  def initialize
    @bike_store = []
  end

  def release_bike
    fail "No bikes available" if empty?
    @bike_store.pop
  end

  def dock(bike)
    fail "dock full" if full?
    @bike_store << bike
  end

  private

  def full?
    if @bike_store.count >= 20
      true
    end
  end

  def empty?
    if @bike_store.count == 0
      true
    end
  end
end
