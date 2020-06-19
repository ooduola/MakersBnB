# frozen_string_literal: true

require 'pg'
require 'bcrypt'

class User # :nodoc:
  attr_reader :username, :id, :password

  def initialize(username:)
    @username = username
    @id = id
    @password = password
  end

  def self.create(username, password)
    encrypt_password = BCrypt::Password.create(password)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makers_bnb_test')
    else
      connection = PG.connect(dbname: 'makers_bnb')
    end
    connection.exec("INSERT INTO users(username, password) VALUES ('#{username}', '#{encrypt_password}');")
  end

  def self.find(username)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makers_bnb_test')
    else
      connection = PG.connect(dbname: 'makers_bnb')
    end
    result = connection.exec('SELECT username FROM users;')
    users = result.map { |u_name| u_name['username'] }
    users.include?(username)
  end
end
