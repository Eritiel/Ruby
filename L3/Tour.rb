class Tour
  attr_reader :id, :ticket_count, :name, :description, :price, :country, :image_link
  
  def initialize(id, ticket_count, name, description, price, country, image_link)
    @id = id
    self.ticket_count = ticket_count
    self.name = name
    self.description = description
    self.price = price
    self.country = country
    self.image_link = image_link
  end
  
  def ticket_count=(new_ticket_count)
    @ticket_count = new_ticket_count
  end

  def name=(new_name)
    @name = new_name
  end

  def description=(new_description)
    @description = new_description
  end

  def price=(new_price)
    @price = Tour.price_format(new_price)
  end

  def country=(new_country)
    @country = Tour.country_format(new_country)
  end

  def image_link=(new_image_link)
    @image_link = new_image_link
  end
  
  def self.country_check(country)
    country =~ /[а-яА-Я][\s-]?[а-яА-Я]+/
  end

  def self.price_check(price)
    price =~ /[0-9]+/
  end

  def self.image_link_check(image_link)
    image_link =~ /^((ftp|http|https):\/\/)?(www\.)?([A-Za-zА-Яа-я0-9]{1}[A-Za-zА-Яа-я0-9\-]*\.?)*\.{1}[A-Za-zА-Яа-я0-9-]{2,8}(\/([\w#!:.?+=&%@!\-\/])*)?/
  end
  
    def self.price_format(price)
    if price_check(price)
      s = price + ' ' + 'руб.'
      return s
    else
      raise ArgumentValueError.new("Неверный формат цены")
    end
  end

  def self.country_format(country)
    if country_check(country)
      s = country.capitalize
      return s
    else
      raise ArgumentValueError.new("Неверный формат названия страны")
    end
  end

  def to_s
    "ID: #{id}; Количество билетов: #{ticket_count()}; Название тура: #{name()}; Описание тура: #{description()}; Цена тура: #{price()}; Страна: #{country()}; Ссылка на картинку: #{image_link}"
  end

end

tour1 = Tour.new(1, 15, "Оздоровительный тур по Крыму", "Приглашаем вас в чудесный тур по Крыму, поистине уникальному месту России. Вы будете поражены богатой природой, сочетающей в себе как горные пейзажи, так морские картины, достойные кисти Айвазовского!", "25000", "Россия", "https://sites.google.com/site/prirodanasevseegooglgfgf/_/rsrc/1463456237313/home/priroda_gory_nebo_ozero_oblaka_81150_1920x1080.jpg")
puts tour1.to_s
