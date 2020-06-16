
def clear_table
  conn = PG.connect(dbname: 'makers_bnb_test')
  conn.exec('TRUNCATE TABLE spaces;')
end

def add_test_data
  MakersBnB.add('light and airy loft')
end
