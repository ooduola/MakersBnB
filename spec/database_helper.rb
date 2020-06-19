# frozen_string_literal: true
def clear_table
  conn = PG.connect(dbname: 'makers_bnb_test')
  conn.exec('TRUNCATE TABLE spaces;')
  conn.exec('TRUNCATE TABLE users RESTART IDENTITY;')
end

def add_test_data
  MakersBnB.add('loft', 'is light and airy', '20.00')
  MakersBnB.add('room', 'my mums old room', '20.00')
  MakersBnB.add('basement', 'nice and sunny', '20.00')
end

def add_single_test_data
  MakersBnB.add('loft', 'is light and airy', '20.00')
end
