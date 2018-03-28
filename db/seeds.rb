
puts "seeding...."
10.times do
  r = Restaurant.new
  r.name = Faker::Company.name
  r.address = "#{Faker::Address.street_address} - #{Faker::Address.city}"
  r.description = Faker::Lorem.paragraph(2)
  r.category = %w[chinese italian french japonese brazilian].sample
  r.picture = Faker::LoremPixel.image
  r.phone_number = Faker::PhoneNumber.cell_phone
  r.save!
end
puts "OK!"