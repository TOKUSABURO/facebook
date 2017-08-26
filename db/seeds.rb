# This file should contain all the record creation needed to seed the database with its default values#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
50.times do |n|
  user_id = Random.rand(1..3)
  title   = Faker::HarryPotter.quote
  content = Faker::Lorem.paragraph

  Topic.create!(
  user_id: user_id,
  title: title,
  content: content
  )
end 
