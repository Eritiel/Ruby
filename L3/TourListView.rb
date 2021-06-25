require_relative 'Tour'
require_relative 'TourList'

$id = -1

class TourListView
  attr_accessor :tour_list
  def initialize (tour_list = TourList.new())
    @tour_list = tour_list
  end
  
end
