require 'pg'

class User

attr_reader :username, :id, :password

  def initialize(username:)
    @username = username
    @id = id
    @password = password
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
    return nil unless username
    if ENV['ENVIRONMENT'] == 'test'
     connection = PG.connect(dbname: 'makers_bnb_test')
    else
      connection = PG.connect(dbname: 'makers_bnb')
    end
      result = connection.query("SELECT * FROM users WHERE #{username} IN username;")
      user = result[0]
    p User.new(username: user['username'])
end
end
