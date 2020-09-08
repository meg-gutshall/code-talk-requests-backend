# This file should contain all the record creation needed to seed the database with its default values. The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all
TopicRequest.destroy_all

# Create users
steven = User.create!(
  first_name: "Steven",
  last_name: "Crouse",
  email_address: "steven@e.com",
  password: "123",
  role: "codepanion"
)
connie = User.create!(
  first_name: "Connie",
  last_name: "Hyman",
  email_address: "connie@e.com",
  password: "123",
  role: "codepanion"
)
adam = User.create!(
  first_name: "Adam",
  last_name: "Weissman",
  email_address: "adam@e.com",
  password: "123",
  role: "codepanion"
)
num_codepanions = User.codepanion.count
puts "Created #{num_codepanions} codepanions"

meg = User.create!(
  first_name: "Meg",
  last_name: "Gutshall",
  email_address: "meg@e.com",
  password: "123",
  role: "super_admin"
)
num_super_admins = User.super_admin.count
puts "Created #{num_super_admins} super_admin"

# Create topic requests
Faker::Number.between(from: num_codepanions * 2, to: num_codepanions * 3).times do
  TopicRequest.create!(
    topic: Faker::Lorem.paragraph_by_chars(number: 50, supplemental: true),
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 1),
    upvotes: Faker::Number.between(from: 0, to: 18),
    codepanion: User.codepanion.sample
  )
end
num_topic_requests = TopicRequest.all.count
puts "Created #{num_topic_requests} topic requests"
