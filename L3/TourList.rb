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

  def search(info)
    @list.select{ |tour| tour.name == info || tour.description == info || tour.price == info || tour.country == info}[0]
  end

  def write_file
    file = File.open('tour.txt', 'a') {|file|
      @list.each_with_index{|tour, id|
        file.write(id.to_s << ' || ' << tour.ticket_count.to_s << ' || ' << tour.name << ' || ' << tour.description << ' || ' <<
                     tour.price.split(' ')[0] << ' || ' << tour.country << ' || ' << tour.image_link)
        file.write("\n")

      }
    }
  end

  def read_file
    file = File.open('tour.txt')
    tours = file.read
    tours = tours.force_encoding("cp866")
    tours = tours.split("\n")
    tours.each do |tour|
      tour = tour.split(' || ')
      puts tour[3]
      tour.map { |elem| elem.force_encoding("UTF-8") }
      add(Tour.new(tour[0], tour[1], tour[2], tour[3], tour[4], tour[5], tour[6]))
    end
  end
  
end
