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
pip = User.create!(
  first_name: "Pip",
  last_name: "Kitty",
  email_address: "pip@email.com",
  password: "password",
  role: "student"
)
puts "Created #{User.all.count} users"
