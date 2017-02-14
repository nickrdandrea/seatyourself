# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create!(name: 'Asian')
Category.create!(name: 'French')
Category.create!(name: 'Greek')
Category.create!(name: 'British')
Category.create!(name: 'American')

Restaurant.create!(
  name: 'Central Perk',
  address: 'New York',
  image: 'http://vignette2.wikia.nocookie.net/friends/images/9/94/Central_Perk.jpg/revision/latest?cb=20130105161326',
  description: 'A coffee shop.',
  phone: '9824389235',
  website: 'centralperk.com',
  capacity: 20,
  owner_id: 1,
  category_id: 5,
  price_range: 1,
  menu: 'centralperk/menu.com'
)

Restaurant.create!(
  name: 'Bluth\'s Original Frozen Banana Stand',
  address: 'Newport Beach',
  image: 'http://vignette2.wikia.nocookie.net/arresteddevelopment/images/6/67/1x05_Charity_Drive_(10).png/revision/latest/scale-to-width-down/670?cb=20120205003332',
  description: 'A stand that sells frozen bananas.',
  phone: '9824389235',
  website: 'bananastand.com',
  capacity: 5,
  owner_id: 2,
  category_id: 5,
  price_range: 1,
  menu: 'bananastand/menu.com'
)

Restaurant.create!(
  name: 'La Ratatouille',
  address: 'Paris',
  image: 'http://www.trbimg.com/img-5137d459/turbine/la-trb-ratatouille-disneyland-paris-03201307-p-005',
  description: 'A restaurant run by a rat.',
  phone: '9824389235',
  website: 'laratatouille.com',
  capacity: 75,
  owner_id: 3,
  category_id: 2,
  price_range: 3,
  menu: 'laratatouille/menu.com'
)

Restaurant.create!(
  name: 'The Three Broomsticks',
  address: 'Hosmeade',
  image: 'https://d3b8erylo0uriu.cloudfront.net/wp-content/uploads/2011/08/oi-universal-orlando-trip-report-august-2011-245.jpg',
  description: 'A magical inn.',
  phone: '9824389235',
  website: 'threebroomsticks.com',
  capacity: 100,
  owner_id: 4,
  category_id: 4,
  price_range: 2,
  menu: 'threebroomsticks/menu.com'
)
#
# @d = Date.today
# @t = Time.now
#
# Reservation.new(
#   date: @d,
#   time: @t,
#   seats: 25,
#   request: 'A seat with a view',
#   user_id: 2,
#   restaurant_id: 6
# )
#
# Reservation.new(
#   date: @d,
#   time: @t,
#   seats: 10,
#   request: 'A booth.',
#   user_id: 2,
#   restaurant_id: 3
# )
