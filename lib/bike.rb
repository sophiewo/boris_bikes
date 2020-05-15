class Bike

  def initialize(status = "working")
    @status = status
  end

  def working?
    @status == "broken"
  end
end
