class MakersBnB

  def initialize
    @mvplist = ['light and airy loft', 'my mums old room', 'sunny basement']
  end

  def all
    @mvplist
  end

  def add(name)
    @mvplist.push(name)
  end

end
