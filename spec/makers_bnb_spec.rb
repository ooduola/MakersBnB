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
    list_of_spaces = bnb.all
    expect(list_of_spaces.length).to eq(3)
    expect(list_of_spaces.first.description).to eq('is light and airy')
    expect(list_of_spaces[1].name).to eq('room')
    expect(list_of_spaces.first.price).to eq('20.00')
  end

  it 'responds to the method .add with one argument' do
    expect(bnb).to respond_to(:add).with(3).arguments
  end

  it '.add adds a name to the mvplist' do
    bnb.add('very comfy couch', 'a couch', '20.00')
    expect(bnb.all.first.name).to eq 'very comfy couch'
  end
end
