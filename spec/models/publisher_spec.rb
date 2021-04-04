require 'rails_helper'

RSpec.describe Publisher, type: :model do
  describe 'location' do
    it 'creates a location object' do
      publisher = FactoryBot.create(:publisher)

      expect(publisher.location).to be_a(Location)
    end

    it 'sets a new location' do
      new_location = Location.new(city: 'Houston', state: 'Texas', country: 'United States')
      publisher = FactoryBot.create(:publisher)

      publisher.location = new_location
      expect(publisher.location.city).to eq(new_location.city)
      expect(publisher.location.state).to eq(new_location.state)
      expect(publisher.location.country).to eq(new_location.country)
    end
  end
end
