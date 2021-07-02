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
end
