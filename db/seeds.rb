require 'faker'

#Create Users
5.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end
users = User.all

#Create Wikis
50.times do
  Wiki.create!(
    title: Faker::HarryPotter.quote,
    body: Faker::Lorem.paragraphs(2),
    user: users.sample
  )
end
wikis = Wiki.all

#Create Admin
admin = User.create!(
  email: "admin@blocipedia.com",
  password: "helloworld",
  role: "admin"
)

#Create Premium
premium = User.create!(
  email: "premium@blocipedia.com",
  password: "helloworld",
  role: "premium"
)

#Create Standard
standard = User.create!(
  email: "standard@blocipedia.com",
  password: "helloworld",
  role: "standard"
)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Wiki.count} wikis created"
