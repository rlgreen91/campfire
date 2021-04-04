FactoryBot.define do
  factory :publisher do
    name { Faker::Book.publisher }
    city { Faker::Address.city }
    state { Faker::Address.state }
    country { Faker::Address.country }
    allows_self_publishing { Faker::Boolean.boolean(true_ratio: 0.5) }
  end
end