# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
chez_claudette = { name: 'Chez Claudette', address: 'Laurrier 123', phone_number: '438-999-9911', category: 'french' }
chez_boran = { name: 'Chez Boran', address: 'Laval 123', phone_number: '438-995-9911', category: 'italian' }
chez_micha = { name: 'Chez Micha', address: 'Laval 123', phone_number: '438-699-9911', category: 'belgian' }
chez_miguel = { name: 'Chez Miguel', address: 'Papineau 123', phone_number: '438-799-9911', category: 'chinese' }
chez_erika = { name: 'Chez Erika', address: 'Brossard 123', phone_number: '438-929-9911', category: 'japanese' }

[chez_claudette, chez_boran, chez_micha, chez_miguel, chez_erika].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
