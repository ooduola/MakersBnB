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

  def self.find(*user)
    person = user.first
    if ENV['ENVIRONMENT'] == 'test'
     connection = PG.connect(dbname: 'makers_bnb_test')
    else
      connection = PG.connect(dbname: 'makers_bnb')
    end
     result = connection.exec("SELECT username FROM users WHERE username = #{person};")
     p User.new(username: result[0]['username'])
  end
end
