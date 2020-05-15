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
    fail "No working bikes available" if @bike_store[0].working?
    @bike_store.pop
  end

  def dock(bike)
    fail "dock full" if full?
    @bike_store << bike
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
