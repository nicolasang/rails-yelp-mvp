# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Cleaning database...'
Restaurant.destroy_all if Rails.env.development? # destroy and recreate (below) only if in development mode, i.e. not in production mode!


puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '04991111111',
    category: 'chinese'
},
{
    name: 'Pizza East',
    address: '56A Shoreditch High St, London E1 6PQ',
    phone_number: '12345678',
    category: 'italian'
},
{
    name: 'Sushi Tei',
    address: '56A Shoreditch High St, Singapore E1 6PQ',
    phone_number: '98745653456',
    category: 'japanese'
},
{
    name: 'Bistro Le Petit',
    address: '1000 Eiffel Tower St, Paris E1 6PQ',
    phone_number: '876543456',
    category: 'french'
},
{
    name: 'Beer Garden',
    address: 'my place on Belgian St, Brussels 1325',
    phone_number: '98745653456',
    category: 'belgian'
}]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
