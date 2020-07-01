# This file should contain all the record creation needed to seed the database with its default values. The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all
TopicRequest.destroy_all
MODS = ["Git & GitHub", "Intro to Ruby", "HTML & CSS", "Procedural Ruby", "Object-Oriented Ruby", "SQL", "ORMs & ActiveRecord", "Rack", "Sinatra", "Rails", "JavaScript", "React", "Redux", "Other"]

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
num_students = User.student.count
puts "Created #{num_students} students"

ayana = User.create!(
  first_name: "Ayana",
  last_name: "Cotton-Zaire",
  email_address: "ayana@email.com",
  password: "password",
  role: "instructor"
)
num_instructors = User.instructor.count
puts "Created #{num_instructors} instructor"

# Create topic requests
Faker::Number.between(from: num_students * 2, to: num_students * 3).times do
  TopicRequest.create!(
    topic: Faker::Lorem.paragraph_by_chars(number: 50, supplemental: true),
    module: MODS.sample,
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 1),
    student: User.student.sample
  )
end
num_topic_requests = TopicRequest.all.count
puts "Created #{num_topic_requests} topic requests"
