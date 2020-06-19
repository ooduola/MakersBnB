# frozen_string_literal: true

require 'user'

describe 'User' do
  it 'respond to the class method create' do
    expect(User).to respond_to(:sign_up)
  end
end

describe 'Find' do
  it 'checks if the username is in the database' do
    User.sign_up('ontest', '1234')
    result = User.login('ontest')
    expect(result).to eq true
  end
end
