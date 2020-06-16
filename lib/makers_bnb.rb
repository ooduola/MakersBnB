# frozen_string_literal: true

require 'pg'
require './lib/space.rb'

class MakersBnB

  def initialize
    @mvplist = ['light and airy loft', 'my mums old room', 'sunny basement']
  end

  def all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makers_bnb_test')
    else
      connection = PG.connect(dbname: 'makers_bnb')
    end
    result = connection.exec('SELECT * FROM spaces')
    result.map do |space|
      x = Space.new(name: space['name'])
      x.name
    end
  end

  def add(name)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makers_bnb_test')
    else
      connection = PG.connect(dbname: 'makers_bnb')
    end
    connection.exec("INSERT INTO spaces(name) VALUES ('#{name}');")
  end
end
