# frozen_string_literal: true

class Space
  attr_reader :name

  def initialize(name:)
    @name = name
  end
end
