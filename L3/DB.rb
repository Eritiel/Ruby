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

end
