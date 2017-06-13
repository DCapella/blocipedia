require 'random_data'

User.create!(email: "d_capella@yahoo.com", password: "password")

5.times do
  User.create!(
    email: RandomData.random_email,
    password: RandomData.random_sentence
  )
end
users = User.all

20.times do
  Wiki.create!(
    user: users.sample,
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    private: false
  )
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Wiki.count} wikis created"
