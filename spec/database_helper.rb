# frozen_string_literal: true
def clear_table
  conn = PG.connect(dbname: 'makers_bnb_test')
  conn.exec('TRUNCATE TABLE spaces;')
end

def add_test_data
  MakersBnB.add('light and airy loft')
  MakersBnB.add('my mums old room')
  MakersBnB.add('sunny basement')
end
