# frozen_string_literal: true

# Value object - date range
class Location
  attr_accessor :state, :city, :country

  def initialize(state:, city:, country:)
    @state = state
    @city = city
    @country = country
  end

  def to_s
    [city, state, country].compact.join(', ')
  end

  # rubocop:disable Style/RedundantSelf
  def ==(other)
    other.class.eql?(self.class) && self.to_s.eql?(other.to_s)
  end
  # rubocop:enable Style/RedundantSelf
end