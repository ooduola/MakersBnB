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
    expect(bnb.all).to include('light and airy loft')
  end

  it 'responds to the method .add with one argument' do
    expect(bnb).to respond_to(:add).with(1).arguments
  end

  it '.add adds a name to the mvplist' do
    bnb.add('very comfy couch')
    expect(bnb.all).to include 'very comfy couch'
  end
end
