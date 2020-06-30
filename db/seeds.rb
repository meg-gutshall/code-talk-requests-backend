# This file should contain all the record creation needed to seed the database with its default values. The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all
Request.destroy_all
MODULES = ["Git & GitHub", "Intro to Ruby", "HTML & CSS", "Procedural Ruby", "Object-Oriented Ruby", "SQL", "ORMs & ActiveRecord", "Rack", "Sinatra", "Rails", "JavaScript", "React", "Redux", "Other"]

# Create users
meg = User.create!(
  first_name: "Meg",
  last_name: "Gutshall",
  email_address: "meg@email.com",
  password: "password",
  role: "student"
)
connie = User.create!(
  first_name: "Connie",
  last_name: "Hyman",
  email_address: "connie@email.com",
  password: "password",
  role: "student"
)
adam = User.create!(
  first_name: "Adam",
  last_name: "Weissman",
  email_address: "adam@email.com",
  password: "password",
  role: "student"
)
puts "Created #{User.student.count} students"
dwayne = User.create!(
  first_name: "Dwayne",
  last_name: "Harmon",
  email_address: "dwayne@email.com",
  password: "password",
  role: "instructor"
)
puts "Created #{User.instructor.count} instructor"

# Create requests
Faker::Number.between(from: 6, to: 14).times do
  Request.create!(
    topic: Faker::Lorem.paragraph_by_chars(number: 50, supplemental: true),
    module: MODULES.sample,
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 1),
    student: User.student.sample
  )
end
puts "Created #{Request.all.count} requests"
