user1 = User.create(name:"user1", email:"user1@test.com", password: "password", password_confirmation: "password")
user2 = User.create(name:"user2", email:"user2@test.com", password: "password", password_confirmation: "password")
user3 = User.create(name:"user3", email:"user3@test.com", password: "password", password_confirmation: "password")

20.times do |n|
  user1.blogs.create(title:"タイトル#{n}", content:"本文#{n}")
end

20.times do |n|
  user2.blogs.create(title:"タイトル#{n}", content:"本文#{n}")
end

20.times do |n|
  user3.blogs.create(title:"タイトル#{n}", content:"本文#{n}")
end
