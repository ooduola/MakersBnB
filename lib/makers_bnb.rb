# frozen_string_literal: true

require 'pg'
require './lib/space.rb'

class MakersBnB

  def initialize
    @mvplist = ['light and airy loft', 'my mums old room', 'sunny basement']
  end

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makers_bnb_test')
    else
      connection = PG.connect(dbname: 'makers_bnb')
    end
    result = connection.exec('SELECT * FROM spaces')
    result.map do |space| Space.new(name: space['name'], description: space['description'], price: space['price'])
    end
  end

  def self.add(name, description, price)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makers_bnb_test')
    else
      connection = PG.connect(dbname: 'makers_bnb')
    end
    connection.exec("INSERT INTO spaces(name, description, price) VALUES ('#{name}','#{description}','#{price}');")
  end
end
