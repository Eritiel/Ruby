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
  
  def delete_tour
    puts "Введите название тура, который должен быть удален: "
    target = STDIN.gets.chomp.force_encoding("cp866").encode("utf-8", replace: nil)
    tour = @tour_list.search(target)
    puts(tour.to_s)
    puts("Вы уверены, что хотите удалить данные о туре? [Да/Нет]")
    answer = STDIN.gets.chomp.force_encoding("cp866").encode("utf-8", replace: nil).downcase
    @tour_list.delete(tour) if answer == "да"
  end
  
  def show_list
    puts "Список туров: "
    puts @tour_list.to_s
  end

  def write_file
    @tour_list.write_file()
  end

  def read_file
    @tour_list.read_file()
  end

  def search_tour
    puts "Введите название, цену, страну или описание тура:"
    value =  STDIN.gets.chomp.force_encoding("cp866").encode("utf-8", replace: nil)
      name = value
      tour = @tour_list.search(name)
    if Tour.price_check value
      price = Tour.price_format(value)
      tour = @tour_list.search(price)
    end
    if Tour.country_check value
      country = Tour.country_format(value)
      tour = @tour_list.search(country)
    end
    description = value
    tour = @tour_list.search(description)
    puts tour
  end

  def edit_tour
    show_list()
    puts "Введите название тура, данные о котором должны быть изменены: "
    target= STDIN.gets.chomp.force_encoding("cp866").encode("utf-8", replace: nil)
    tour = @tour_list.search(target)
    puts "Введите поле для редактирования: "
    puts "1 - Количество билетов"
    puts "2 - Название тура"
    puts "3 - Описание тура"
    puts "4 - Цена"
    puts "5 - Страна"
    puts "6 - Ссылка на картинку"
    puts "."
    arg = STDIN.gets.chomp()
    case arg
    when "1"
      puts "Текущее значение: #{tour.ticket_count}"
      tour.ticket_count = STDIN.gets.chomp.force_encoding("cp866").encode("utf-8", replace: nil).to_i
    when "2"
      puts "Текущее значение: #{tour.name}"
      tour.name =  STDIN.gets.chomp
    when "3"
      puts "Текущее значение: #{tour.description}"
      tour.description = STDIN.gets.chomp
    when "4"
      puts "Текущее значение: #{tour.price}"
      tour.price = Tour.price_format(STDIN.gets.chomp.force_encoding("cp866").encode("utf-8", replace: nil))
    when "5"
      puts "Текущее значение: #{tour.country}"
      tour.country = Tour.country_format(STDIN.gets.chomp)
    when "6"
      puts "Текущее значение: #{tour.image_link}"
      tour.image_link = STDIN.gets.chomp
  end
end
end
