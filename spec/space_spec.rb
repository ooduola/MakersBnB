# frozen_string_literal: true

require 'space'

describe 'Space' do
  let(:space) { Space.new(name: 'name', description: 'description', price: 'price') }

  it 'is an instance of Space' do
    expect(space).to be_a_kind_of Space
  end
end
