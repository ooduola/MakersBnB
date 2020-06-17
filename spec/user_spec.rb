# frozen_string_literal: true

require 'user'

describe 'User' do
  it 'respond to the class method create' do
    expect(User).to respond_to(:create)
  end

  it 'returns the value of username' do
    user = User.create('ontest', '1234')
    expect(user).to be_instance_of(User)
    expect(user.username[:username]).to eq('ontest')
  end
  
  # it 'to check users credentials' do
  #   user = User.create('ontest', '1234')
  #   expect(User.checker).to eq('true')
  # end

end

