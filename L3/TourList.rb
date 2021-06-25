require_relative "Tour"

class TourList
  def initialize
    @list = []
  end
  
  def add(tour)
    @list << tour
  end
  
  def to_s
    @list.each{|tour| tour.to_s}
  end


  def delete(tour)
    @list.delete(tour)
  end

  def list_length
    @list.length
  end

  def search(info)
    @list.each{|tour| if [tour.name, tour.price, tour.country, tour.description].include? info
                            return tour
                       else return "Тура с искомыми значениями нет в списке"
                       end
    }
  end
  
end
