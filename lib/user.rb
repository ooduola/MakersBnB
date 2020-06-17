class User 

attr_reader :username

  def initialize(username)
    @username = username
  end

  def self.create(username:, password:)
    user = User.new(username)
  end
end