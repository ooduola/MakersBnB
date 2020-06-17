# frozen_string_literal: true

require 'makers_BnB'
require 'database_helper'

describe 'makersBnB' do
  let(:bnb) { MakersBnB }

  it 'responds to method .all' do
    expect(bnb).to respond_to :all
  end

  it '.all returns a list of names' do
    add_test_data
    expect(bnb.all.length).to eq(3)
    expect(bnb.all.first.description).to eq('is light and airy')
    expect(bnb.all.first.name).to eq('loft')
    expect(bnb.all.first.price).to eq('20.00')
  end

  it 'responds to the method .add with one argument' do
    expect(bnb).to respond_to(:add).with(3).arguments
  end

  it '.add adds a name to the mvplist' do
    bnb.add('very comfy couch', 'a couch', '20.00')
    expect(bnb.all.first.name).to eq 'very comfy couch'
  end
end
