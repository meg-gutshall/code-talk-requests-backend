# This file should contain all the record creation needed to seed the database with its default values. The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all
Request.destroy_all

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
Faker::Number.between(from: 4, to: 9).times do
  Request.create!(
    topic: Faker::Lorem.paragraph_by_chars(number: 50, supplemental: true),
    module: Faker::Lorem.sentence(word_count: 1, supplemental: true, random_words_to_add: 2),
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 1),
    student: User.student.sample
  )
end
puts "Created #{Request.all.count} requests"
