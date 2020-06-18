require 'pg'

class User

attr_reader :username, :id, :password, :test

  def initialize(username:, id:, password:)
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
    if ENV['ENVIRONMENT'] == 'test'
     connection = PG.connect(dbname: 'makers_bnb_test')
    else
      connection = PG.connect(dbname: 'makers_bnb')
    end
    p result = connection.exec("SELECT * FROM users")
    #
    # result.map do |x|
    # p User.new(x[0]['username'])

    # p test = User.new(result[0]['username'])
end
end
