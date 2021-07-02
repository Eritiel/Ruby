require 'mysql2'

class DB
  @@instance = nil
  def initialize
    @connection = Mysql2::Client.new(
      :host => 'localhost',
      :username => 'root',
      :password => '******',
      :database => 'tour')
  end

  def self.get_instance
    if @@instance == nil
      @@instance = DB.new
    end
    @@instance
  end

  def read_list
    results = @connection.query("SELECT * FROM tours")
    list_tours = []
    results.each do |row|
        emp = Tour.new(row['id'], row['TicketsCount'], row['Name'], row['Desciption'],
                           row['ImagePreview'], row['Price'], row['Country'])
        list_tours << emp
    end
    list_tours
  end

  def add_tour(id, ticketscount, name, desciption, imagepreview, price, country)
      @connection.query("INSERT INTO `tour`.`tours` (`id`, `ticketscount` ,`name` ,`desciption` ,`imagepreview` ,`price` ,
                                   `country`)
                                 VALUES ('#{id}', '#{ticketscount}', '#{name}', '#{desciption}', '#{imagepreview}', '#{price}',
                                   '#{country}')")
  end  
  
  def delete_tour(emp)
    @connection.query("DELETE FROM tours WHERE name = '#{emp.name}'")
  end

end
