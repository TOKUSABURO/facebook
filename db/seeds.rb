# 50.times do |n|
# user_id = Random.rand(1..3)
# title   = Faker::HarryPotter.quote
# content = Faker::Lorem.paragraph
#
# Blog.create!(
# user_id: user_id,
# title: title,
# content: content
# )
# end
# --------

50.times do |n|
user_id = Random.rand(1..3)
title   = Faker::HarryPotter.quote
content = Faker::Lorem.paragraph
email = Faker::Internet.email
password = "password"
provider = Faker::Internet.email
name = "username"
@user = User.create(email: email,
              name: name,
             password: password,
             password_confirmation: password,
             uid: n,
             provider: provider
             )

@blog=Blog.create!(
user_id: @user.id,
title: title,
content: content
)

Comment.create!(
user_id: @user.id,
blog_id: @blog.id,
content: content
)

end
