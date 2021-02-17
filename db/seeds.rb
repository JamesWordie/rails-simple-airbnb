Flat.destroy_all

10.times do
  Flat.create(
    name: Faker::Name.name_with_middle,
    address: Faker::Address.street_address,
    description: Faker::Quote.famous_last_words,
    price_per_night: rand(25..250),
    number_of_guests: rand(1..8)
  )
end
