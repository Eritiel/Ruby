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
    @price = new_price
  end

  def country=(new_country)
    @country = new_country
  end

  def image_link=(new_image_link)
    @image_link = new_image_link
  end
  
  def self.country_check(country)
    country =~ /[а-яА-Я]+/
  end

  def self.price_check(price)
    price =~ /[0-9]+/
  end

  def self.image_link_check(image_link)
    image_link =~ /^((ftp|http|https):\/\/)?(www\.)?([A-Za-zА-Яа-я0-9]{1}[A-Za-zА-Яа-я0-9\-]*\.?)*\.{1}[A-Za-zА-Яа-я0-9-]{2,8}(\/([\w#!:.?+=&%@!\-\/])*)?/
  end
