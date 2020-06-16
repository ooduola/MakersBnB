require 'makers_BnB'

describe 'makersBnB' do
  let(:bnb) { MakersBnB.new }

  it 'is a class' do
    expect(bnb).to be_a_kind_of MakersBnB
  end

  it 'responds to method .all' do
    expect(bnb).to respond_to :all
  end
end
