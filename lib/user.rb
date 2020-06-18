require 'pg'

class User

attr_reader :username, :id

  def initialize(username:, id:)
    @username = username
    @id = id
  end

  def self.create(username, password)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makers_bnb_test')
    else
      connection = PG.connect(dbname: 'makers_bnb')
    end
    connection.exec("INSERT INTO users(username, password) VALUES ('#{username}', '#{password}');")
    end

  def self.find(username)
    if ENV['ENVIRONMENT'] == 'test'
     connection = PG.connect(dbname: 'makers_bnb_test')
    else
      connection = PG.connect(dbname: 'makers_bnb')
    end
    result = connection.exec('SELECT * FROM users')
    result.map do |result|
    p User.new(username: result['username'], id: result['id'],)
end
end
end
