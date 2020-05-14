# This file should contain all the record creation needed to seed the database with its default values. The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all

# Create users
meg = User.create!(
  first_name: "Meg",
  last_name: "Gutshall",
  email_address: "meg@email.com",
  password: "password",
  role: "student"
)
chris = User.create!(
  first_name: "Chris",
  last_name: "Kakos",
  email_address: "chris@email.com",
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
nick = User.create!(
  first_name: "Nick",
  last_name: "Romans",
  email_address: "nick@email.com",
  password: "password",
  role: "student"
)
puts "Created #{User.all.count} users"
