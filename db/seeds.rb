100.times do |n|
 email = Faker::Internet.email
 password = "password"
 User.create!(
             name: "たろう",email: email,
             password: password,
             password_confirmation: password,
             uid: SecureRandom.uuid
             )
end


100.times do |i|
  blog = Blog.new(title: 'テスト',content: 'トピック', user_id: i + 1)
  2.times do
    blog.comments.build(content: 'コメント', user_id: i +1)
  end
  blog.save
end

#n = 1
#while n <= 100
# Blog.create!(
#     title: "テスト",
#     content: "テスト" ,
##     )
  #   n= n+1
#end

#n = 1
#while n <= 100
# Comment.create!(
#     content: "テスト" ,
#     blog: n,
#     )
#     n= n+1
#end

















# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#100.times do |n|
#  email = Faker::Internet.email
#  password = "password"
#  avatar = Faker::Avatar.image
#  User.create!( name: "たろう",
###             password_confirmation: password,
  #             avatar:  Faker::Avatar.image,
  #             uid: n ##SecureRandom.uuid
  #             )
#end

#

#20.times do
#email = Faker::Internet.email
#name = "ううふふ"
#password = "password"
#avatar = Faker::Avatar.image
#user = User.new(
#email: email,
#name: name,
#password: password,
#password_confirmation: password,
#avatar: avatar,
#uid: SecureRandom.uuid,
#)
#user.skip_confirmation!
#user.save
#end

#130.times do
#  follower_id = [*1..20].sample
#  followed_id = [*1..20].sample
#  while follower_id == followed_id
#    followed_id = [*1..20].sample
#  end
#    Relationship.find_or_create_by(
#    follower_id: follower_id,
#    followed_id: followed_id
#  )
#end

#10.times do
#  content = "うふふ"
#  user_id = [*1..10].sample
#  Blog.create(
#  content: content,
##  )
#end


#20.times do
#  user_id = [*1..10].sample
#  blog_id = [*1..10].sample
#  content = "うふふ"
#  Comment.create!(
#    user_id: user_id,
##    content: content
##  )
#end
