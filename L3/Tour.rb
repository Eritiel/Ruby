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
