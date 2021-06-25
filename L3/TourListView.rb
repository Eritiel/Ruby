require_relative 'Tour'
require_relative 'TourList'

$id = -1

class TourListView
  attr_accessor :tour_list
  def initialize (tour_list = TourList.new())
    @tour_list = tour_list
  end

  def add_tour
    $id += 1
    puts "Введите параметры тура: "
    puts "Количество билетов: "
    tickets_count = STDIN.gets.chomp.force_encoding("cp866").encode("utf-8", replace: nil).to_i
    puts "Название тура: "
    name = STDIN.gets.chomp.force_encoding("cp866").encode("utf-8", replace: nil)
    puts "Описание тура: "
    description = STDIN.gets.chomp.force_encoding("cp866").encode("utf-8", replace: nil)
    puts "Цена тура: "
    price = STDIN.gets.chomp.force_encoding("cp866").encode("utf-8", replace: nil)
    puts "Название страны: "
    country = STDIN.gets.chomp.force_encoding("cp866").encode("utf-8", replace: nil)
    puts "Ссылка на изображение: "
    link = STDIN.gets.chomp.force_encoding("cp866").encode("utf-8", replace: nil)
    tour = Tour.new($id, tickets_count, name, description, price, country, link)
    @tour_list.add(tour)
  end

  
end
