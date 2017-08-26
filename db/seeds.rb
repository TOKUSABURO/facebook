50.times do |n|
user_id = Random.rand(1..3)
title   = Faker::HarryPotter.quote
content = Faker::Lorem.paragraph

Blog.create!(
user_id: user_id,
title: title,
content: content
)
end
