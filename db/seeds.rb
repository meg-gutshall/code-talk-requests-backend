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
stephen = User.create!(
  first_name: "Stephen",
  last_name: "Blais",
  email_address: "stephen@e.com",
  password: "123",
  role: "codepanion"
)
chien = User.create!(
  first_name: "Chi-En",
  last_name: "Leow",
  email_address: "chien@e.com",
  password: "123",
  role: "codepanion"
)
kenton = User.create!(
  first_name: "Kenton",
  last_name: "Archer",
  email_address: "kenton@e.com",
  password: "123",
  role: "codepanion"
)
daniel = User.create!(
  first_name: "Daniel",
  last_name: "Dawson",
  email_address: "daniel@e.com",
  password: "123",
  role: "codepanion"
)
ashley = User.create!(
  first_name: "Ashley",
  last_name: "Mader",
  email_address: "ashley@e.com",
  password: "123",
  role: "codepanion"
)
puts "Created #{User.codepanion.count} codepanions"

meg = User.create!(
  first_name: "Meg",
  last_name: "Gutshall",
  email_address: "meg@e.com",
  password: "123",
  role: "super_admin"
)
sherry = User.create!(
  first_name: "Sherry",
  last_name: "Martin",
  email_address: "sherry@e.com",
  password: "123",
  role: "super_admin"
)
puts "Created #{User.super_admin.count} super_admin"

# Create topic requests
TopicRequest.create!(
  idea: "GitHub",
  description: "How to connect your local repo to your GitHub repo",
  upvotes: Faker::Number.between(from: 0, to: 6),
  codepanion: kenton
)
TopicRequest.create!(
  idea: "SQL",
  description: "Useful SQL commands",
  upvotes: Faker::Number.between(from: 0, to: 6),
  codepanion: connie
)
TopicRequest.create!(
  idea: "Metaprogramming in Ruby",
  description: "Creating new utility classes and methods",
  upvotes: Faker::Number.between(from: 0, to: 6),
  codepanion: ashley
)
TopicRequest.create!(
  idea: "Webpacker in Rails",
  description: "How do you use it? What's it even for?",
  upvotes: Faker::Number.between(from: 0, to: 6),
  codepanion: ashley
)
TopicRequest.create!(
  idea: "Bootstrap",
  description: "A basic introduction to how to use Bootstrap and implement it in a project",
  upvotes: Faker::Number.between(from: 0, to: 6),
  codepanion: ashley
)
TopicRequest.create!(
  idea: "Project Hosting",
  description: "The different platforms you can use to host your projects (i.e. Heroku, Netlify, GitHub Pages, etc.)",
  upvotes: Faker::Number.between(from: 0, to: 6),
  codepanion: ashley
)
TopicRequest.create!(
  idea: "JavaScript Plugins",
  description: "How to implement third-party JS plugins in your projects",
  upvotes: Faker::Number.between(from: 0, to: 6),
  codepanion: chien
)
TopicRequest.create!(
  idea: "CSS",
  description: "A basic overview of CSS concepts like grid and flexbox",
  upvotes: Faker::Number.between(from: 0, to: 6),
  codepanion: chien
)
TopicRequest.create!(
  idea: "Fetch",
  description: "Using fetch in JavaScript",
  upvotes: Faker::Number.between(from: 0, to: 6),
  codepanion: chien
)
TopicRequest.create!(
  idea: "Async/Await",
  description: "How and when to use the async and await keywords in JavaScript",
  upvotes: Faker::Number.between(from: 0, to: 6),
  codepanion: chien
)
TopicRequest.create!(
  idea: "ActiveRecord Queries",
  description: "How to create ActiveRecord queries and how it differs from SQL",
  upvotes: Faker::Number.between(from: 0, to: 6),
  codepanion: chien
)
TopicRequest.create!(
  idea: "Blogging",
  description: "A brainstorm session for our Flatiron blog topics",
  upvotes: Faker::Number.between(from: 0, to: 6),
  codepanion: chien
)
TopicRequest.create!(
  idea: "Project Collaboration",
  description: "Who wants to collaborate on a side project?",
  upvotes: Faker::Number.between(from: 0, to: 6),
  codepanion: stephen
)
TopicRequest.create!(
  idea: "Python",
  description: "Learning the basics of Python",
  upvotes: Faker::Number.between(from: 0, to: 6),
  codepanion: stephen
)
TopicRequest.create!(
  idea: "Web Hosting",
  description: "The best ways to host your portfolio site",
  upvotes: Faker::Number.between(from: 0, to: 6),
  codepanion: stephen
)
TopicRequest.create!(
  idea: "Algorithms",
  description: "Review common algorithms and complete related challenges",
  upvotes: Faker::Number.between(from: 0, to: 6),
  codepanion: daniel
)
TopicRequest.create!(
  idea: "React Native",
  description: "Learn how to build mobile applications using React",
  upvotes: Faker::Number.between(from: 0, to: 6),
  codepanion: daniel
)
TopicRequest.create!(
  idea: "Jekyll",
  description: "How to use Jekyll to build a static site on GitHub Pages",
  upvotes: Faker::Number.between(from: 0, to: 6),
  codepanion: daniel
)
TopicRequest.create!(
  idea: "Kotlin",
  description: "Basic Kotlin to help with building mobile apps",
  upvotes: Faker::Number.between(from: 0, to: 6),
  codepanion: daniel
)
TopicRequest.create!(
  idea: "React State",
  description: "Explain state in React and what it does exactly",
  upvotes: Faker::Number.between(from: 0, to: 6),
  codepanion: steven
)
TopicRequest.create!(
  idea: "Redux vs. React Hooks",
  description: "Do we need Redux if we use React Hooks?",
  upvotes: Faker::Number.between(from: 0, to: 6),
  codepanion: steven
)
TopicRequest.create!(
  idea: "Interview Prep",
  description: "How to prep for interviews—both behavioral and technical",
  upvotes: Faker::Number.between(from: 0, to: 6),
  codepanion: steven
)
TopicRequest.create!(
  idea: "Mock Assessment",
  description: "Let's do mock project assessments",
  upvotes: Faker::Number.between(from: 0, to: 6),
  codepanion: steven
)
puts "Created #{TopicRequest.all.count} topic requests"
