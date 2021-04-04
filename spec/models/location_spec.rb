# frozen_string_literal: true

require 'rails_helper'

# rubocop:disable Metrics/BlockLength
describe Location do
  let(:bangalore_location) do
    {
      city: 'Bangalore', state: 'Karnataka', country: 'India'
    }
  end

  it 'returns address as inline' do
    location = Location.new(bangalore_location)

    expect(location.to_s).to eq('Bangalore, Karnataka, India')
  end

  context 'when location is compared' do
    it 'returns true if locations are identical' do
      location1 = Location.new(bangalore_location)
      location2 = Location.new(bangalore_location)

      expect(location1 == location2).to eq(true)
    end

    it 'returns false if locations are not identical' do
      location1 = Location.new(bangalore_location)
      location2 = Location.new(
        city: 'Bengaluru',
        state: 'Karnataka',
        country: 'India'
      )
      expect(location1 == location2).to eq(false)
    end
  end
end
# rubocop:enable Metrics/BlockLength