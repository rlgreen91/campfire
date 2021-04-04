class Publisher < ApplicationRecord
  def location
    Location.new(city: city, state: state, country: country)
  end

  def location=(location)
    self.city = location.city
    self.state = location.state
    self.country = location.country
  end
end
