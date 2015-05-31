# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Building.delete_all
Building.create!(
  address: %{1 Yonge Street, Toronto, ON, Canada},
  name: 'Sunnybrook Building 1',
  postal_code: 'S0N Y8K',
  image_url: 'sb1.jpg'
  )
  
