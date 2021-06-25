require_relative "Tour"

class TourList
  def initialize
    @list = []
  end
  
  def add(tour)
    @list << tour
  end
  
end
