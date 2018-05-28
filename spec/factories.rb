FactoryBot.define do
  Faker::Config.locale = 'en-AU'

  factory :directory do
    title         Faker::Name.prefix
    first_name    Faker::Name.first_name
    last_name     Faker::Name.last_name
    gender        ['Male', 'Female', 'Other'].sample
    phone         Faker::PhoneNumber.phone_number
    email         Faker::Internet.email
    street_line_1 Faker::Address.secondary_address
    street_line_2 Faker::Address.street_address
    sublocality   Faker::Address.city
    locality      Faker::Address.state
    postal_code   Faker::Address.postcode
    country_code  Faker::Address.country
    latitude      Faker::Address.latitude
    longitude     Faker::Address.longitude
  end

end