# frozen_string_literal: true

require 'user'

describe 'User' do
  it 'respond to the class method create' do
    expect(User).to respond_to(:create)
  end

  #   it 'returns the value of username' do
  #     user = User.create('ontest', '1234')
  #     expect(user).to be_instance_of(User)
  #   end
end

describe 'Find' do
  it 'checks if the username is in the database' do
    User.create('ontest', '1234')
    result = User.find('ontest')
    expect(result).to eq true
  end
end
