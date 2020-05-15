require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bike

  def initialize(capacity = DEFAULT_CAPACITY)
    @bike_store = []
    @capacity = capacity
  end

  def release_bike
    fail "No bikes available" if empty?
    @bike_store.pop
  end

  def dock(bike, status = "working")
    fail "dock full" if full?
    @bike_store << {name: bike, status: status}
  end

  private

  def full?
    if @bike_store.count >= @capacity
      true
    end
  end

  def empty?
    if @bike_store.count == 0
      true
    end
  end
end
