require_relative "Tour"
require_relative "DB"
require 'yaml'
require 'json'

class TourList
  def initialize
    @list = []
  end
  
  def add(tour)
    @list << tour
  end
  
  def read_db
    @list = DB.get_instance.read_list
  end

  def add_to_db(id, ticket_count, name, description, price, country, image_link)
    DB.get_instance.add_tour(id, ticket_count, name, description, price, country, image_link)
  end

  def delete_from_db(tour)
    DB.get_instance.delete_tour(tour)
    @list = []
    read_db
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

  def write_list_YAML
    File.open("tours.yml", "w:utf-8") { |file| file.write(@list.to_yaml) }
  end

  def read_list_YAML
    @list = YAML::load(File.open('tours.yml', 'r:UTF-8'))
  end
  
  def write_list_JSON
    File.open("tours.json","w:UTF-8") do |file|
      tempHash = {}
      @list.each_with_index do |tour, id|
        tempHash[id] = { 
          "id": tour.id,
          "ticket_count": tour.ticket_count,
          "name": tour.name,
          "description": tour.description,
          "price": tour.price,
          "country": tour.country,
          "image_link": tour.passport.image_link
        }
      end
      file.write(JSON.pretty_generate(tempHash))
    end
  end

  def read_list_JSON
    File.open("tours.json", 'r:UTF-8') do |file|
      data = JSON.parse(file.read)
      data.each do |key, value|
        tour = Tour.new(value["id"], value["ticket_count"], value["name"], value["description"],
          value["price"], value["country"], value["image_link"])
        add(tour)
      end
    end
  end
  
end
