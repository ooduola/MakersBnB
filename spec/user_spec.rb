require 'user'

describe 'User' do

  it 'respond to the class method create' do
    expect(User).to respond_to(:create)
  end

  it 'returns the value of username' do
    user = User.create(username: 'ontest', password: '1234')
    expect(user).to be_instance_of(User)
    expect(user.username).to eq('ontest')
  end
end