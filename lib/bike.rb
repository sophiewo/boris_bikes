class Bike

  def initialize(status = "working")
    @status = status
  end

  def working?
    @status == "working"
  end
end
