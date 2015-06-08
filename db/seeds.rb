# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Building.delete_all
buildings = Building.create!([{
  address: %{1 Yonge Street, Toronto, ON, Canada},
  name: 'Sunnybrook Building 1',
  postal_code: 'S0N Y8K',
  image_url: 'sb1.jpg'
  },
  {
  address: %{2 Yonge Street, Toronto, ON, Canada},
  name: 'Sunnybrook Building 2',
  postal_code: 'S0N Y8T',
  image_url: 'sb2.jpg'
}])

Floor.delete_all
buildings[0].floor.create!([{
  number: 1,
  code: 'ONE',
  },
  {
  number: 2,
  code: 'TWO',
}])
buildings[1].floor.create!([{
  number: 1,
  code: 'UNO',
  },
  {
  number: 2,
  code: 'DOS',
}])
  
Layout.delete_all
buildings[0].floor[0].layout.create!([{
  description: 'floor plan',
  file_location: 'sb1fl1fp.jpg'
  },
  {
  description: 'electrical',
  file_location: 'sb1fl1va.jpg'
}])


buildings[0].floor[1].layout.create!([{
  description: "blueprint",
  file_location: "C:\\file2"
  },
  {
  description:"electrical",
  file_location: "C:\\file3"
}])

buildings[1].floor[0].layout.create!([{
  description: "HVAC",
  file_location: "C:\\file4"
  },
  {
  description: "electrical",
  file_location: "C:\\file5"
}])

buildings[1].floor[1].layout.create!([{
  description: "HVAC",
  file_location: "C:\\file6"
  },
  {
  description: "electrical",
  file_location: "C:\\file7"
}])

