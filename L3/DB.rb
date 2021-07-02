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

end
